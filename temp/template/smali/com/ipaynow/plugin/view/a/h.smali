.class public Lcom/ipaynow/plugin/view/a/h;
.super Ljava/lang/Object;


# static fields
.field private static synthetic $SWITCH_TABLE$com$ipaynow$plugin$view$kploading$KProgressHUD$Style:[I = null

.field private static final MATCH_PARENT:I = -0x1

.field private static final WRAP_CONTENT:I = -0x2


# instance fields
.field private background:Lcom/ipaynow/plugin/view/a/b;

.field private bg_lout:Landroid/widget/LinearLayout;

.field private container:Landroid/widget/FrameLayout;

.field private details_label:Landroid/widget/TextView;

.field private label:Landroid/widget/TextView;

.field private mAnimateSpeed:I

.field private mCancellable:Z

.field private mContext:Landroid/content/Context;

.field private mCornerRadius:F

.field private mDetailsLabel:Ljava/lang/String;

.field private mDimAmount:F

.field private mIsAutoDismiss:Z

.field private mLabel:Ljava/lang/String;

.field private mMaxProgress:I

.field private mProgressDialog:Lcom/ipaynow/plugin/view/a/i;

.field private mWindowColor:I


# direct methods
.method static synthetic $SWITCH_TABLE$com$ipaynow$plugin$view$kploading$KProgressHUD$Style()[I
    .locals 3

    sget-object v0, Lcom/ipaynow/plugin/view/a/h;->$SWITCH_TABLE$com$ipaynow$plugin$view$kploading$KProgressHUD$Style:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ipaynow/plugin/view/a/j;->values()[Lcom/ipaynow/plugin/view/a/j;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/ipaynow/plugin/view/a/j;->ANNULAR_DETERMINATE:Lcom/ipaynow/plugin/view/a/j;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/view/a/j;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/ipaynow/plugin/view/a/j;->BAR_DETERMINATE:Lcom/ipaynow/plugin/view/a/j;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/view/a/j;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/ipaynow/plugin/view/a/j;->PIE_DETERMINATE:Lcom/ipaynow/plugin/view/a/j;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/view/a/j;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/ipaynow/plugin/view/a/j;->SPIN_INDETERMINATE:Lcom/ipaynow/plugin/view/a/j;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/view/a/j;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/ipaynow/plugin/view/a/h;->$SWITCH_TABLE$com$ipaynow$plugin$view$kploading$KProgressHUD$Style:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ipaynow/plugin/view/a/h;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/ipaynow/plugin/view/a/i;

    invoke-direct {v0, p0, p1}, Lcom/ipaynow/plugin/view/a/i;-><init>(Lcom/ipaynow/plugin/view/a/h;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ipaynow/plugin/view/a/h;->mProgressDialog:Lcom/ipaynow/plugin/view/a/i;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ipaynow/plugin/view/a/h;->mDimAmount:F

    const-string v0, "#b1000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ipaynow/plugin/view/a/h;->mWindowColor:I

    iput v1, p0, Lcom/ipaynow/plugin/view/a/h;->mAnimateSpeed:I

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/ipaynow/plugin/view/a/h;->mCornerRadius:F

    iput-boolean v1, p0, Lcom/ipaynow/plugin/view/a/h;->mIsAutoDismiss:Z

    sget-object v0, Lcom/ipaynow/plugin/view/a/j;->SPIN_INDETERMINATE:Lcom/ipaynow/plugin/view/a/j;

    invoke-virtual {p0, v0}, Lcom/ipaynow/plugin/view/a/h;->setStyle(Lcom/ipaynow/plugin/view/a/j;)Lcom/ipaynow/plugin/view/a/h;

    return-void
.end method

.method static synthetic access$0(Lcom/ipaynow/plugin/view/a/h;)F
    .locals 1

    iget v0, p0, Lcom/ipaynow/plugin/view/a/h;->mDimAmount:F

    return v0
.end method

.method static synthetic access$1(Lcom/ipaynow/plugin/view/a/h;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/view/a/h;->mCancellable:Z

    return v0
.end method

.method static synthetic access$10(Lcom/ipaynow/plugin/view/a/h;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/view/a/h;->details_label:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$11(Lcom/ipaynow/plugin/view/a/h;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/a/h;->details_label:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/ipaynow/plugin/view/a/h;)I
    .locals 1

    iget v0, p0, Lcom/ipaynow/plugin/view/a/h;->mWindowColor:I

    return v0
.end method

.method static synthetic access$13(Lcom/ipaynow/plugin/view/a/h;)F
    .locals 1

    iget v0, p0, Lcom/ipaynow/plugin/view/a/h;->mCornerRadius:F

    return v0
.end method

.method static synthetic access$14(Lcom/ipaynow/plugin/view/a/h;)I
    .locals 1

    iget v0, p0, Lcom/ipaynow/plugin/view/a/h;->mMaxProgress:I

    return v0
.end method

.method static synthetic access$15(Lcom/ipaynow/plugin/view/a/h;)I
    .locals 1

    iget v0, p0, Lcom/ipaynow/plugin/view/a/h;->mAnimateSpeed:I

    return v0
.end method

.method static synthetic access$16(Lcom/ipaynow/plugin/view/a/h;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/a/h;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lcom/ipaynow/plugin/view/a/h;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/a/h;->mDetailsLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$18(Lcom/ipaynow/plugin/view/a/h;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/view/a/h;->mIsAutoDismiss:Z

    return v0
.end method

.method static synthetic access$2(Lcom/ipaynow/plugin/view/a/h;Lcom/ipaynow/plugin/view/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/view/a/h;->background:Lcom/ipaynow/plugin/view/a/b;

    return-void
.end method

.method static synthetic access$3(Lcom/ipaynow/plugin/view/a/h;)Lcom/ipaynow/plugin/view/a/b;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/a/h;->background:Lcom/ipaynow/plugin/view/a/b;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ipaynow/plugin/view/a/h;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/view/a/h;->bg_lout:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$5(Lcom/ipaynow/plugin/view/a/h;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/a/h;->bg_lout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$6(Lcom/ipaynow/plugin/view/a/h;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/view/a/h;->container:Landroid/widget/FrameLayout;

    return-void
.end method

.method static synthetic access$7(Lcom/ipaynow/plugin/view/a/h;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/a/h;->container:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$8(Lcom/ipaynow/plugin/view/a/h;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/view/a/h;->label:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$9(Lcom/ipaynow/plugin/view/a/h;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/a/h;->label:Landroid/widget/TextView;

    return-object v0
.end method

.method public static create(Landroid/content/Context;)Lcom/ipaynow/plugin/view/a/h;
    .locals 1

    new-instance v0, Lcom/ipaynow/plugin/view/a/h;

    invoke-direct {v0, p0}, Lcom/ipaynow/plugin/view/a/h;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/a/h;->mProgressDialog:Lcom/ipaynow/plugin/view/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/view/a/h;->mProgressDialog:Lcom/ipaynow/plugin/view/a/i;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/view/a/i;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/view/a/h;->mProgressDialog:Lcom/ipaynow/plugin/view/a/i;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/view/a/i;->dismiss()V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/a/h;->mProgressDialog:Lcom/ipaynow/plugin/view/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/view/a/h;->mProgressDialog:Lcom/ipaynow/plugin/view/a/i;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/view/a/i;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAnimationSpeed(I)Lcom/ipaynow/plugin/view/a/h;
    .locals 0

    iput p1, p0, Lcom/ipaynow/plugin/view/a/h;->mAnimateSpeed:I

    return-object p0
.end method

.method public setAutoDismiss(Z)Lcom/ipaynow/plugin/view/a/h;
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/view/a/h;->mIsAutoDismiss:Z

    return-object p0
.end method

.method public setCancellable(Z)Lcom/ipaynow/plugin/view/a/h;
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/view/a/h;->mCancellable:Z

    return-object p0
.end method

.method public setCornerRadius(F)Lcom/ipaynow/plugin/view/a/h;
    .locals 0

    iput p1, p0, Lcom/ipaynow/plugin/view/a/h;->mCornerRadius:F

    return-object p0
.end method

.method public setCustomView(Landroid/view/View;)Lcom/ipaynow/plugin/view/a/h;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/view/a/h;->mProgressDialog:Lcom/ipaynow/plugin/view/a/i;

    invoke-virtual {v0, p1}, Lcom/ipaynow/plugin/view/a/i;->setView(Landroid/view/View;)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Custom view must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDetailsLabel(Ljava/lang/String;)Lcom/ipaynow/plugin/view/a/h;
    .locals 1

    iput-object p1, p0, Lcom/ipaynow/plugin/view/a/h;->mDetailsLabel:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/view/a/h;->details_label:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/view/a/h;->details_label:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public setDimAmount(F)Lcom/ipaynow/plugin/view/a/h;
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iput p1, p0, Lcom/ipaynow/plugin/view/a/h;->mDimAmount:F

    :cond_0
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/ipaynow/plugin/view/a/h;
    .locals 1

    iput-object p1, p0, Lcom/ipaynow/plugin/view/a/h;->mLabel:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/view/a/h;->label:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/view/a/h;->label:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public setMaxProgress(I)Lcom/ipaynow/plugin/view/a/h;
    .locals 0

    iput p1, p0, Lcom/ipaynow/plugin/view/a/h;->mMaxProgress:I

    return-object p0
.end method

.method public setProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/a/h;->mProgressDialog:Lcom/ipaynow/plugin/view/a/i;

    invoke-virtual {v0, p1}, Lcom/ipaynow/plugin/view/a/i;->setProgress(I)V

    return-void
.end method

.method public setStyle(Lcom/ipaynow/plugin/view/a/j;)Lcom/ipaynow/plugin/view/a/h;
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/ipaynow/plugin/view/a/h;->$SWITCH_TABLE$com$ipaynow$plugin$view$kploading$KProgressHUD$Style()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/ipaynow/plugin/view/a/j;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/ipaynow/plugin/view/a/h;->mProgressDialog:Lcom/ipaynow/plugin/view/a/i;

    invoke-virtual {v1, v0}, Lcom/ipaynow/plugin/view/a/i;->setView(Landroid/view/View;)V

    return-object p0

    :pswitch_0
    new-instance v0, Lcom/ipaynow/plugin/view/a/m;

    iget-object v1, p0, Lcom/ipaynow/plugin/view/a/h;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ipaynow/plugin/view/a/m;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/ipaynow/plugin/view/a/k;

    iget-object v1, p0, Lcom/ipaynow/plugin/view/a/h;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ipaynow/plugin/view/a/k;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/ipaynow/plugin/view/a/a;

    iget-object v1, p0, Lcom/ipaynow/plugin/view/a/h;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ipaynow/plugin/view/a/a;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/ipaynow/plugin/view/a/c;

    iget-object v1, p0, Lcom/ipaynow/plugin/view/a/h;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ipaynow/plugin/view/a/c;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setWindowColor(I)Lcom/ipaynow/plugin/view/a/h;
    .locals 0

    iput p1, p0, Lcom/ipaynow/plugin/view/a/h;->mWindowColor:I

    return-object p0
.end method

.method public show()Lcom/ipaynow/plugin/view/a/h;
    .locals 1

    invoke-virtual {p0}, Lcom/ipaynow/plugin/view/a/h;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/view/a/h;->mProgressDialog:Lcom/ipaynow/plugin/view/a/i;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/view/a/i;->show()V

    :cond_0
    return-object p0
.end method
