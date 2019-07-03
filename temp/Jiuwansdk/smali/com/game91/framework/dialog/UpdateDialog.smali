.class public Lcom/game91/framework/dialog/UpdateDialog;
.super Lcom/game91/framework/dialog/DialogWindow;
.source "UpdateDialog.java"


# instance fields
.field private dismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDownloadButton:Landroid/widget/Button;

.field private mDownloadSuccess:Z

.field private mDownloadUrl:Ljava/lang/String;

.field private mDownloading:Z

.field private mIsForce:Z

.field private mProgressBar:Lcom/game91/framework/widget/NumberProgressBar;

.field private mSize:J

.field private mUpdateInfo:Ljava/lang/String;

.field private mUpdateTip:Ljava/lang/String;

.field private mVersionCode:I

.field private mVersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lcom/game91/framework/dialog/DialogWindow;-><init>()V

    .line 42
    const-string v0, "1.0.3.1-1.0.3.21"

    iput-object v0, p0, Lcom/game91/framework/dialog/UpdateDialog;->mVersionName:Ljava/lang/String;

    .line 43
    const-string v0, "\u7248\u672c\u66f4\u65b0"

    iput-object v0, p0, Lcom/game91/framework/dialog/UpdateDialog;->mUpdateTip:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/game91/framework/dialog/UpdateDialog;->mUpdateInfo:Ljava/lang/String;

    .line 45
    iput-boolean v1, p0, Lcom/game91/framework/dialog/UpdateDialog;->mIsForce:Z

    .line 50
    iput-boolean v1, p0, Lcom/game91/framework/dialog/UpdateDialog;->mDownloading:Z

    .line 53
    iput-boolean v1, p0, Lcom/game91/framework/dialog/UpdateDialog;->mDownloadSuccess:Z

    return-void
.end method

.method static synthetic access$000(Lcom/game91/framework/dialog/UpdateDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/game91/framework/dialog/UpdateDialog;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/game91/framework/dialog/UpdateDialog;->mDownloadSuccess:Z

    return v0
.end method

.method static synthetic access$002(Lcom/game91/framework/dialog/UpdateDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/game91/framework/dialog/UpdateDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/game91/framework/dialog/UpdateDialog;->mDownloadSuccess:Z

    return p1
.end method

.method static synthetic access$100(Lcom/game91/framework/dialog/UpdateDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/game91/framework/dialog/UpdateDialog;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/game91/framework/dialog/UpdateDialog;->install()V

    return-void
.end method

.method static synthetic access$200(Lcom/game91/framework/dialog/UpdateDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/game91/framework/dialog/UpdateDialog;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/game91/framework/dialog/UpdateDialog;->doDownload()V

    return-void
.end method

.method static synthetic access$300(Lcom/game91/framework/dialog/UpdateDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/game91/framework/dialog/UpdateDialog;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/game91/framework/dialog/UpdateDialog;->mDownloading:Z

    return v0
.end method

.method static synthetic access$400(Lcom/game91/framework/dialog/UpdateDialog;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1
    .param p0, "x0"    # Lcom/game91/framework/dialog/UpdateDialog;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/game91/framework/dialog/UpdateDialog;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/game91/framework/dialog/UpdateDialog;)Lcom/game91/framework/widget/NumberProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/game91/framework/dialog/UpdateDialog;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/game91/framework/dialog/UpdateDialog;->mProgressBar:Lcom/game91/framework/widget/NumberProgressBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/game91/framework/dialog/UpdateDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/game91/framework/dialog/UpdateDialog;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/game91/framework/dialog/UpdateDialog;->mDownloadButton:Landroid/widget/Button;

    return-object v0
.end method

.method private createContentView()Landroid/view/View;
    .locals 24

    .prologue
    .line 88
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/game91/framework/dialog/UpdateDialog;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 89
    .local v8, "layout":Landroid/widget/LinearLayout;
    const/16 v19, 0x11

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 90
    const/high16 v19, 0x35000000

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 92
    new-instance v16, Lcom/game91/framework/widget/TopLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/game91/framework/dialog/UpdateDialog;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/game91/framework/widget/TopLayout;-><init>(Landroid/content/Context;)V

    .line 93
    .local v16, "topLayout":Lcom/game91/framework/widget/TopLayout;
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/game91/framework/widget/TopLayout;->setOrientation(I)V

    .line 94
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/game91/framework/widget/TopLayout;->setGravity(I)V

    .line 95
    const/16 v19, -0x1

    const/16 v20, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v8, v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 97
    invoke-virtual/range {v16 .. v16}, Lcom/game91/framework/widget/TopLayout;->getMearureWidth()I

    move-result v18

    .line 98
    .local v18, "w":I
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    const v20, 0x3ee7ef9e    # 0.453f

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v6, v0

    .line 99
    .local v6, "h":I
    new-instance v15, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/game91/framework/dialog/UpdateDialog;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 100
    .local v15, "topBackgroundImageView":Landroid/widget/ImageView;
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v15, v1, v6}, Lcom/game91/framework/widget/TopLayout;->addView(Landroid/view/View;II)V

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/game91/framework/dialog/UpdateDialog;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/game91/library/picasso/Picasso;->with(Landroid/content/Context;)Lcom/game91/library/picasso/Picasso;

    move-result-object v19

    const-string v20, "file:///android_asset/plugins/images/ic_com_game91_sdk_update_dialog_top.png"

    .line 102
    invoke-virtual/range {v19 .. v20}, Lcom/game91/library/picasso/Picasso;->load(Ljava/lang/String;)Lcom/game91/library/picasso/RequestCreator;

    move-result-object v19

    .line 103
    invoke-virtual/range {v19 .. v19}, Lcom/game91/library/picasso/RequestCreator;->centerCrop()Lcom/game91/library/picasso/RequestCreator;

    move-result-object v19

    .line 104
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Lcom/game91/library/picasso/RequestCreator;->resize(II)Lcom/game91/library/picasso/RequestCreator;

    move-result-object v19

    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 105
    invoke-virtual/range {v19 .. v20}, Lcom/game91/library/picasso/RequestCreator;->config(Landroid/graphics/Bitmap$Config;)Lcom/game91/library/picasso/RequestCreator;

    move-result-object v19

    .line 106
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/game91/library/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 108
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/game91/framework/dialog/UpdateDialog;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 109
    .local v9, "linearLayout":Landroid/widget/LinearLayout;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 110
    const/high16 v19, 0x41800000    # 16.0f

    invoke-static/range {v19 .. v19}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v19

    const/high16 v20, 0x41000000    # 8.0f

    invoke-static/range {v20 .. v20}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v20

    const/high16 v21, 0x41800000    # 16.0f

    invoke-static/range {v21 .. v21}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v21

    const/high16 v22, 0x41800000    # 16.0f

    invoke-static/range {v22 .. v22}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v22

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 111
    const/16 v19, -0x1

    const/16 v20, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v9, v1, v2}, Lcom/game91/framework/widget/TopLayout;->addView(Landroid/view/View;II)V

    .line 112
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 113
    .local v5, "drawable":Landroid/graphics/drawable/GradientDrawable;
    const/16 v19, 0x8

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v21, v19, v20

    const/16 v20, 0x1

    const/16 v21, 0x0

    aput v21, v19, v20

    const/16 v20, 0x2

    const/16 v21, 0x0

    aput v21, v19, v20

    const/16 v20, 0x3

    const/16 v21, 0x0

    aput v21, v19, v20

    const/16 v20, 0x4

    const/high16 v21, 0x40400000    # 3.0f

    invoke-static/range {v21 .. v21}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    aput v21, v19, v20

    const/16 v20, 0x5

    const/high16 v21, 0x40400000    # 3.0f

    invoke-static/range {v21 .. v21}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    aput v21, v19, v20

    const/16 v20, 0x6

    const/high16 v21, 0x40400000    # 3.0f

    invoke-static/range {v21 .. v21}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    aput v21, v19, v20

    const/16 v20, 0x7

    const/high16 v21, 0x40400000    # 3.0f

    invoke-static/range {v21 .. v21}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    aput v21, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 114
    const/16 v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 115
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    new-instance v14, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/game91/framework/dialog/UpdateDialog;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 118
    .local v14, "titleView":Landroid/widget/TextView;
    const/high16 v19, 0x41700000    # 15.0f

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 119
    const/high16 v19, -0x1000000

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\u662f\u5426\u66f4\u65b0\u5230"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/framework/dialog/UpdateDialog;->mVersionName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\u7248\u672c?"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    const/16 v19, -0x1

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v14, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 124
    new-instance v11, Landroid/widget/ScrollView;

    invoke-virtual/range {p0 .. p0}, Lcom/game91/framework/dialog/UpdateDialog;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 125
    .local v11, "scrollView":Landroid/widget/ScrollView;
    const/16 v19, -0x1

    const/high16 v20, 0x42fa0000    # 125.0f

    invoke-static/range {v20 .. v20}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v11, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 127
    new-instance v10, Landroid/widget/RelativeLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/game91/framework/dialog/UpdateDialog;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 128
    .local v10, "relativeLayout":Landroid/widget/RelativeLayout;
    const/16 v19, 0x11

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 129
    const/16 v19, -0x1

    const/high16 v20, 0x42200000    # 40.0f

    invoke-static/range {v20 .. v20}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v10, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 131
    new-instance v4, Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/game91/framework/dialog/UpdateDialog;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 132
    .local v4, "button":Landroid/widget/Button;
    const-string v19, "\u7acb\u5373\u66f4\u65b0"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 133
    const/16 v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 134
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    .end local v5    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 135
    .restart local v5    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    const/high16 v19, 0x40200000    # 2.5f

    invoke-static/range {v19 .. v19}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 136
    const v19, -0xc13112

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 137
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    const/16 v19, -0x1

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v4, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 139
    new-instance v19, Lcom/game91/framework/dialog/UpdateDialog$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/game91/framework/dialog/UpdateDialog$1;-><init>(Lcom/game91/framework/dialog/UpdateDialog;)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/game91/framework/dialog/UpdateDialog;->mDownloadButton:Landroid/widget/Button;

    .line 150
    new-instance v19, Lcom/game91/framework/widget/NumberProgressBar;

    invoke-virtual/range {p0 .. p0}, Lcom/game91/framework/dialog/UpdateDialog;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/game91/framework/widget/NumberProgressBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/game91/framework/dialog/UpdateDialog;->mProgressBar:Lcom/game91/framework/widget/NumberProgressBar;

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/framework/dialog/UpdateDialog;->mProgressBar:Lcom/game91/framework/widget/NumberProgressBar;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    const/16 v21, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/framework/dialog/UpdateDialog;->mProgressBar:Lcom/game91/framework/widget/NumberProgressBar;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Lcom/game91/framework/widget/NumberProgressBar;->setVisibility(I)V

    .line 155
    new-instance v9, Landroid/widget/LinearLayout;

    .end local v9    # "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/game91/framework/dialog/UpdateDialog;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 156
    .restart local v9    # "linearLayout":Landroid/widget/LinearLayout;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 157
    const/16 v19, 0x0

    const/high16 v20, 0x41400000    # 12.0f

    invoke-static/range {v20 .. v20}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v20

    const/16 v21, 0x0

    const/high16 v22, 0x41400000    # 12.0f

    invoke-static/range {v22 .. v22}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v22

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 158
    const/16 v19, -0x1

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v9, v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    .line 160
    new-instance v13, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/game91/framework/dialog/UpdateDialog;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 161
    .local v13, "textView":Landroid/widget/TextView;
    const/high16 v19, 0x41600000    # 14.0f

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 162
    const v19, -0x99999a

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 164
    const-string v19, "<p>\u66f4\u65b0\u5927\u5c0f:%s    <a href=\'%s\'>(\u4e0b\u8f7d\u5730\u5740)</a><br>%s</br></p>"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/game91/framework/dialog/UpdateDialog;->mSize:J

    move-wide/from16 v22, v0

    .line 165
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/game91/framework/dialog/UpdateDialog;->convertFileSize(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/framework/dialog/UpdateDialog;->mDownloadUrl:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/framework/dialog/UpdateDialog;->mUpdateInfo:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    .line 164
    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 166
    .local v12, "text":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 168
    const/16 v19, -0x1

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v13, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 170
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/game91/framework/dialog/UpdateDialog;->mIsForce:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 171
    new-instance v17, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/game91/framework/dialog/UpdateDialog;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 172
    .local v17, "view":Landroid/view/View;
    const v19, -0x272728

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 173
    const/high16 v19, 0x3f800000    # 1.0f

    invoke-static/range {v19 .. v19}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v19

    const/high16 v20, 0x41800000    # 16.0f

    invoke-static/range {v20 .. v20}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v20

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/game91/framework/widget/TopLayout;->addView(Landroid/view/View;II)V

    .line 175
    new-instance v7, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/game91/framework/dialog/UpdateDialog;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 176
    .local v7, "imageView":Landroid/widget/ImageView;
    const/high16 v19, 0x42000000    # 32.0f

    invoke-static/range {v19 .. v19}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v19

    const/high16 v20, 0x42000000    # 32.0f

    invoke-static/range {v20 .. v20}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v20

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v7, v1, v2}, Lcom/game91/framework/widget/TopLayout;->addView(Landroid/view/View;II)V

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/game91/framework/dialog/UpdateDialog;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/game91/library/picasso/Picasso;->with(Landroid/content/Context;)Lcom/game91/library/picasso/Picasso;

    move-result-object v19

    const-string v20, "file:///android_asset/plugins/images/ic_com_game91_sdk_update_dialog_close.png"

    .line 179
    invoke-virtual/range {v19 .. v20}, Lcom/game91/library/picasso/Picasso;->load(Ljava/lang/String;)Lcom/game91/library/picasso/RequestCreator;

    move-result-object v19

    .line 180
    invoke-virtual/range {v19 .. v19}, Lcom/game91/library/picasso/RequestCreator;->centerCrop()Lcom/game91/library/picasso/RequestCreator;

    move-result-object v19

    const/high16 v20, 0x42000000    # 32.0f

    .line 181
    invoke-static/range {v20 .. v20}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v20

    const/high16 v21, 0x42000000    # 32.0f

    invoke-static/range {v21 .. v21}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v21

    invoke-virtual/range {v19 .. v21}, Lcom/game91/library/picasso/RequestCreator;->resize(II)Lcom/game91/library/picasso/RequestCreator;

    move-result-object v19

    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 182
    invoke-virtual/range {v19 .. v20}, Lcom/game91/library/picasso/RequestCreator;->config(Landroid/graphics/Bitmap$Config;)Lcom/game91/library/picasso/RequestCreator;

    move-result-object v19

    .line 183
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/game91/library/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 185
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    .end local v5    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 186
    .restart local v5    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 187
    const v19, -0xc13112

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 188
    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    new-instance v19, Lcom/game91/framework/dialog/UpdateDialog$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/game91/framework/dialog/UpdateDialog$2;-><init>(Lcom/game91/framework/dialog/UpdateDialog;)V

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    .end local v7    # "imageView":Landroid/widget/ImageView;
    .end local v17    # "view":Landroid/view/View;
    :cond_0
    return-object v8
.end method

.method private doDownload()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 284
    iget-object v0, p0, Lcom/game91/framework/dialog/UpdateDialog;->mProgressBar:Lcom/game91/framework/widget/NumberProgressBar;

    invoke-virtual {v0, v3}, Lcom/game91/framework/widget/NumberProgressBar;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/game91/framework/dialog/UpdateDialog;->mDownloadButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/game91/framework/dialog/UpdateDialog;->mDownloading:Z

    .line 287
    new-instance v0, Lcom/game91/framework/update/UpdateTask;

    invoke-direct {v0}, Lcom/game91/framework/update/UpdateTask;-><init>()V

    .line 289
    invoke-direct {p0}, Lcom/game91/framework/dialog/UpdateDialog;->getDownloadDir()Ljava/lang/String;

    move-result-object v1

    .line 290
    invoke-direct {p0}, Lcom/game91/framework/dialog/UpdateDialog;->getDownloadName()Ljava/lang/String;

    move-result-object v2

    .line 288
    invoke-virtual {v0, v1, v2}, Lcom/game91/framework/update/UpdateTask;->setDownloadFile(Ljava/lang/String;Ljava/lang/String;)Lcom/game91/framework/update/UpdateTask;

    move-result-object v0

    iget-object v1, p0, Lcom/game91/framework/dialog/UpdateDialog;->mDownloadUrl:Ljava/lang/String;

    .line 292
    invoke-virtual {v0, v1}, Lcom/game91/framework/update/UpdateTask;->setDownloadUrl(Ljava/lang/String;)Lcom/game91/framework/update/UpdateTask;

    move-result-object v0

    new-instance v1, Lcom/game91/framework/dialog/UpdateDialog$3;

    invoke-direct {v1, p0}, Lcom/game91/framework/dialog/UpdateDialog$3;-><init>(Lcom/game91/framework/dialog/UpdateDialog;)V

    .line 293
    invoke-virtual {v0, v1}, Lcom/game91/framework/update/UpdateTask;->setUpdateListener(Lcom/game91/framework/update/UpdateListener;)Lcom/game91/framework/update/UpdateTask;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Void;

    .line 314
    invoke-virtual {v0, v1}, Lcom/game91/framework/update/UpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 315
    return-void
.end method

.method private getDownloadDir()Ljava/lang/String;
    .locals 2

    .prologue
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/game91/framework/dialog/UpdateDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "my_games"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDownloadName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/game91/framework/dialog/UpdateDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/game91/framework/dialog/UpdateDialog;->mVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private install()V
    .locals 5

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/game91/framework/dialog/UpdateDialog;->installAndroid7()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 255
    :goto_0
    return-void

    .line 244
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 245
    invoke-direct {p0}, Lcom/game91/framework/dialog/UpdateDialog;->getDownloadDir()Ljava/lang/String;

    move-result-object v3

    .line 246
    invoke-direct {p0}, Lcom/game91/framework/dialog/UpdateDialog;->getDownloadName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .local v0, "apkFile":Ljava/io/File;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 250
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    invoke-virtual {p0}, Lcom/game91/framework/dialog/UpdateDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 252
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private installAndroid7()Z
    .locals 12

    .prologue
    const/16 v7, 0x18

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 258
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v7, :cond_0

    invoke-virtual {p0}, Lcom/game91/framework/dialog/UpdateDialog;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v6, v7, :cond_1

    :cond_0
    move v4, v5

    .line 280
    :goto_0
    return v4

    .line 263
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 264
    invoke-direct {p0}, Lcom/game91/framework/dialog/UpdateDialog;->getDownloadDir()Ljava/lang/String;

    move-result-object v6

    .line 265
    invoke-direct {p0}, Lcom/game91/framework/dialog/UpdateDialog;->getDownloadName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .local v0, "apkFile":Ljava/io/File;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 269
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 271
    const-string v6, "android.support.v4.content.FileProvider"

    invoke-static {v6}, Lcom/game91/framework/reflect/Reflect;->on(Ljava/lang/String;)Lcom/game91/framework/reflect/Reflect;

    move-result-object v6

    const-string v7, "getUriForFile"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/game91/framework/dialog/UpdateDialog;->getActivity()Landroid/app/Activity;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/game91/framework/dialog/UpdateDialog;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".updateprovider"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object v0, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/game91/framework/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/game91/framework/reflect/Reflect;

    move-result-object v6

    invoke-virtual {v6}, Lcom/game91/framework/reflect/Reflect;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 272
    .local v1, "contentUri":Landroid/net/Uri;
    const-string v6, "application/vnd.android.package-archive"

    invoke-virtual {v3, v1, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    invoke-virtual {p0}, Lcom/game91/framework/dialog/UpdateDialog;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 275
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 276
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v4, v5

    .line 280
    goto :goto_0
.end method


# virtual methods
.method convertFileSize(J)Ljava/lang/String;
    .locals 13
    .param p1, "size"    # J

    .prologue
    .line 215
    const-wide/16 v4, 0x400

    .line 216
    .local v4, "kb":J
    const-wide/16 v8, 0x400

    mul-long v6, v4, v8

    .line 217
    .local v6, "mb":J
    const-wide/16 v8, 0x400

    mul-long v2, v6, v8

    .line 219
    .local v2, "gb":J
    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    .line 220
    const-string v1, "%.1fGB"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    long-to-float v10, p1

    long-to-float v11, v2

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 228
    :goto_0
    return-object v1

    .line 221
    :cond_0
    cmp-long v1, p1, v6

    if-ltz v1, :cond_2

    .line 222
    long-to-float v1, p1

    long-to-float v8, v6

    div-float v0, v1, v8

    .line 223
    .local v0, "f":F
    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    const-string v1, "%.0fMB"

    :goto_1
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "%.1fMB"

    goto :goto_1

    .line 224
    .end local v0    # "f":F
    :cond_2
    cmp-long v1, p1, v4

    if-ltz v1, :cond_4

    .line 225
    long-to-float v1, p1

    long-to-float v8, v4

    div-float v0, v1, v8

    .line 226
    .restart local v0    # "f":F
    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    const-string v1, "%.0fKB"

    :goto_2
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v1, "%.1fKB"

    goto :goto_2

    .line 228
    .end local v0    # "f":F
    :cond_4
    const-string v1, "%dB"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "paramLayoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "paramViewGroup"    # Landroid/view/ViewGroup;
    .param p3, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1, p2, p3}, Lcom/game91/framework/dialog/DialogWindow;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, "rootView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/game91/framework/dialog/UpdateDialog;->createContentView()Landroid/view/View;

    move-result-object v0

    .line 84
    :cond_0
    return-object v0
.end method

.method public setDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/game91/framework/dialog/UpdateDialog;
    .locals 0
    .param p1, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/game91/framework/dialog/UpdateDialog;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 211
    return-object p0
.end method

.method public setFileInfo(Ljava/lang/String;I)Lcom/game91/framework/dialog/UpdateDialog;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "versionCode"    # I

    .prologue
    .line 73
    iput-object p1, p0, Lcom/game91/framework/dialog/UpdateDialog;->mDownloadUrl:Ljava/lang/String;

    .line 74
    iput p2, p0, Lcom/game91/framework/dialog/UpdateDialog;->mVersionCode:I

    .line 75
    return-object p0
.end method

.method public setForce(Z)Lcom/game91/framework/dialog/UpdateDialog;
    .locals 1
    .param p1, "force"    # Z

    .prologue
    .line 67
    if-eqz p1, :cond_0

    const-string v0, "\u5f3a\u5236\u66f4\u65b0"

    :goto_0
    iput-object v0, p0, Lcom/game91/framework/dialog/UpdateDialog;->mUpdateTip:Ljava/lang/String;

    .line 68
    iput-boolean p1, p0, Lcom/game91/framework/dialog/UpdateDialog;->mIsForce:Z

    .line 69
    return-object p0

    .line 67
    :cond_0
    const-string v0, "\u7248\u672c\u66f4\u65b0"

    goto :goto_0
.end method

.method public setInfo(Ljava/lang/String;J)Lcom/game91/framework/dialog/UpdateDialog;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # J

    .prologue
    .line 61
    iput-object p1, p0, Lcom/game91/framework/dialog/UpdateDialog;->mUpdateInfo:Ljava/lang/String;

    .line 62
    iput-wide p2, p0, Lcom/game91/framework/dialog/UpdateDialog;->mSize:J

    .line 63
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/game91/framework/dialog/UpdateDialog;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/game91/framework/dialog/UpdateDialog;->mVersionName:Ljava/lang/String;

    .line 57
    return-object p0
.end method
