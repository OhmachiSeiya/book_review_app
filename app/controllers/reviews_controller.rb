class ReviewsController < ApplicationController
  before_action :set_review, only: %i[ show edit update destroy ]

  def top
    @reviews = Review.all.order(created_at: "DESC")
    @categories = Category.all.order(created_at: "DESC")
  end

  def show_sample1
    @content = "# 概要\r\n岡潔と小林秀雄の対談\r\n学問や芸術について\r\n\r\n## 目次\r\n- 学問をたのしむ\r\n- 無明ということ\r\n- 国を象徴する酒\r\n- 数学も個性を失う\r\n- 科学的知性の限界\r\n- 人間と人生への無知\r\n- 破壊だけの自然科学\r\n- アインシュタインという人間\r\n- 美的感動について\r\n- 人間の生き方\r\n- 無明の達人\r\n- 「一」という観念\r\n- 数学と詩の相似\r\n- はじめに言葉\r\n- 近代数学と情緒\r\n- 記憶がよみがえる\r\n- 批評の極意\r\n- 素読教育の必要\r\n\r\n### 感想\r\n二人の天才による世界の見方が参考になった"
  end

  def show_sample2
    @content = "# 概要\r\n人工衛星開発の第一歩。\r\n人工衛星に関する技術と心の両方を学ぶ本。\r\n\r\n## 目次\r\n- 超小型衛星ってどんなもの？\r\n- 製作をはじめる前に\r\n- 環境をととのえよう\r\n- 人工衛星の設計・開発の基本要素\r\n- つくってから、打ち上げるまで\r\n- 打ち上げ、そして運用へ\r\n- さあ、何から始めよう？\r\n\r\n### 感想\r\n宮崎氏の人間性の豊かさを垣間見ることができる素晴らしい本だと感じた"
  end

  # GET /reviews or /reviews.json
  def index
    @reviews = Review.all.order(created_at: "DESC")
  end

  # GET /reviews/1 or /reviews/1.json
  def show
  end

  # GET /reviews/new
  def new
    @review = Review.new
  end

  # GET /reviews/1/edit
  def edit
  end

  # POST /reviews or /reviews.json
  def create
    @review = Review.new(review_params)

    respond_to do |format|
      if @review.save
        format.html { redirect_to @review, notice: "レビューが作成されました" }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reviews/1 or /reviews/1.json
  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to @review, notice: "レビューを更新しました" }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1 or /reviews/1.json
  def destroy
    @review.destroy
    respond_to do |format|
      format.html { redirect_to reviews_url, notice: "レビューが削除されました" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def review_params
      params.require(:review).permit(:title, :published, :author, :category_id, :score, :content, :portrait)
    end
end
