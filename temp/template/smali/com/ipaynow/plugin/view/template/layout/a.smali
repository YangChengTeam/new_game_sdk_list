.class public abstract Lcom/ipaynow/plugin/view/template/layout/a;
.super Ljava/lang/Object;


# static fields
.field private static cn:I

.field protected static co:I

.field protected static cp:I


# instance fields
.field protected bw:Lcom/ipaynow/plugin/view/b/a;

.field public cg:Landroid/app/Activity;

.field protected ch:Landroid/widget/LinearLayout;

.field protected ci:Landroid/widget/LinearLayout;

.field protected cj:Landroid/widget/LinearLayout;

.field protected ck:Landroid/widget/LinearLayout;

.field protected cl:Lcom/ipaynow/plugin/view/b/c;

.field private cm:Lcom/ipaynow/plugin/view/template/layout/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/ipaynow/plugin/view/b/a;->Y()Lcom/ipaynow/plugin/view/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/view/b/a;->getScreenHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fb70a3d70a3d70aL    # 0.09

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lcom/ipaynow/plugin/view/template/layout/a;->cn:I

    invoke-static {}, Lcom/ipaynow/plugin/view/b/a;->Y()Lcom/ipaynow/plugin/view/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/view/b/a;->getScreenHeight()I

    move-result v0

    sget v1, Lcom/ipaynow/plugin/view/template/layout/a;->cn:I

    sub-int/2addr v0, v1

    sput v0, Lcom/ipaynow/plugin/view/template/layout/a;->co:I

    invoke-static {}, Lcom/ipaynow/plugin/view/b/a;->Y()Lcom/ipaynow/plugin/view/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/view/b/a;->getScreenWith()I

    move-result v0

    sput v0, Lcom/ipaynow/plugin/view/template/layout/a;->cp:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/a;->cg:Landroid/app/Activity;

    iput-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/a;->ch:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/a;->ci:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/a;->cj:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/a;->ck:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/a;->bw:Lcom/ipaynow/plugin/view/b/a;

    iput-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/a;->cl:Lcom/ipaynow/plugin/view/b/c;

    iput-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/a;->cm:Lcom/ipaynow/plugin/view/template/layout/b;

    iput-object p1, p0, Lcom/ipaynow/plugin/view/template/layout/a;->cg:Landroid/app/Activity;

    invoke-static {}, Lcom/ipaynow/plugin/view/b/a;->Y()Lcom/ipaynow/plugin/view/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/a;->bw:Lcom/ipaynow/plugin/view/b/a;

    invoke-static {}, Lcom/ipaynow/plugin/view/b/c;->aa()Lcom/ipaynow/plugin/view/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/a;->cl:Lcom/ipaynow/plugin/view/b/c;

    return-void
.end method

.method private addHeader(Lcom/ipaynow/plugin/view/template/layout/c;Landroid/widget/LinearLayout;)V
    .locals 1

    sget-object v0, Lcom/ipaynow/plugin/view/template/layout/c;->HEADER_DEFAULT:Lcom/ipaynow/plugin/view/template/layout/c;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/ipaynow/plugin/view/template/layout/a;->createHeader1()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/ipaynow/plugin/view/template/layout/c;->HEADER_BACK:Lcom/ipaynow/plugin/view/template/layout/c;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/ipaynow/plugin/view/template/layout/a;->createHeader2()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private createHeader1()Landroid/widget/RelativeLayout;
    .locals 11

    const/16 v10, 0x2d

    const/4 v9, -0x2

    const/16 v8, 0x18

    const/4 v7, 0x0

    const/4 v6, -0x1

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/ipaynow/plugin/view/template/layout/a;->cg:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/ipaynow/plugin/conf/PluginConfig$color;->thin_black:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ipaynow/plugin/view/template/layout/a;->cg:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/ipaynow/plugin/view/template/layout/a;->cl:Lcom/ipaynow/plugin/view/b/c;

    sget-object v3, Lcom/ipaynow/plugin/view/b/d;->BACK:Lcom/ipaynow/plugin/view/b/d;

    const/16 v4, 0x19

    const/16 v5, 0x14

    invoke-virtual {v2, v3, v4, v5}, Lcom/ipaynow/plugin/view/b/c;->a(Lcom/ipaynow/plugin/view/b/d;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/ipaynow/plugin/view/template/layout/a;->bw:Lcom/ipaynow/plugin/view/b/a;

    invoke-virtual {v2, v8}, Lcom/ipaynow/plugin/view/b/a;->getDp(I)I

    move-result v2

    iget-object v3, p0, Lcom/ipaynow/plugin/view/template/layout/a;->bw:Lcom/ipaynow/plugin/view/b/a;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/ipaynow/plugin/view/b/a;->getDp(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v7, v7, v2, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, p0, Lcom/ipaynow/plugin/view/template/layout/a;->cm:Lcom/ipaynow/plugin/view/template/layout/b;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/view/template/layout/b;->C()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/ipaynow/plugin/view/template/layout/a;->bw:Lcom/ipaynow/plugin/view/b/a;

    const/16 v4, 0x3c

    invoke-virtual {v3, v4}, Lcom/ipaynow/plugin/view/b/a;->getDp(I)I

    move-result v3

    invoke-direct {v2, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/ipaynow/plugin/view/template/layout/a;->bw:Lcom/ipaynow/plugin/view/b/a;

    invoke-virtual {v3, v8}, Lcom/ipaynow/plugin/view/b/a;->getDp(I)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/ipaynow/plugin/view/template/layout/a;->cg:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/ipaynow/plugin/view/template/layout/a;->cl:Lcom/ipaynow/plugin/view/b/c;

    sget-object v5, Lcom/ipaynow/plugin/view/b/d;->IPAYNOW_LOGO:Lcom/ipaynow/plugin/view/b/d;

    invoke-virtual {v4, v5, v10, v10}, Lcom/ipaynow/plugin/view/b/c;->a(Lcom/ipaynow/plugin/view/b/d;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/ipaynow/plugin/view/template/layout/a;->bw:Lcom/ipaynow/plugin/view/b/a;

    invoke-virtual {v5, v8}, Lcom/ipaynow/plugin/view/b/a;->getDp(I)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private createHeader2()Landroid/widget/RelativeLayout;
    .locals 11

    const/16 v10, 0xf

    const/4 v2, -0x1

    const-wide v6, 0x3fd851eb851eb852L    # 0.38

    const/4 v8, 0x0

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/ipaynow/plugin/view/template/layout/a;->cg:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/ipaynow/plugin/conf/PluginConfig$color;->thin_black:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ipaynow/plugin/view/template/layout/a;->cg:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/ipaynow/plugin/conf/PluginConfig$color;->thin_black:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/ipaynow/plugin/view/template/layout/a;->cl:Lcom/ipaynow/plugin/view/b/c;

    sget-object v3, Lcom/ipaynow/plugin/view/b/d;->BACK:Lcom/ipaynow/plugin/view/b/d;

    invoke-virtual {v2, v3, v8, v8}, Lcom/ipaynow/plugin/view/b/c;->a(Lcom/ipaynow/plugin/view/b/d;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v2, Lcom/ipaynow/plugin/view/template/layout/a;->cn:I

    int-to-double v2, v2

    mul-double/2addr v2, v6

    double-to-int v2, v2

    sget v3, Lcom/ipaynow/plugin/view/template/layout/a;->cn:I

    int-to-double v4, v3

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-virtual {v1, v2, v8, v3, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    sget v3, Lcom/ipaynow/plugin/view/template/layout/a;->cn:I

    sget v4, Lcom/ipaynow/plugin/view/template/layout/a;->cn:I

    int-to-double v4, v4

    const-wide v6, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/ipaynow/plugin/view/template/layout/a;->cg:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/ipaynow/plugin/view/template/layout/a;->cl:Lcom/ipaynow/plugin/view/b/c;

    sget-object v5, Lcom/ipaynow/plugin/view/b/d;->IPAYNOW_LOGO:Lcom/ipaynow/plugin/view/b/d;

    invoke-virtual {v4, v5, v8, v8}, Lcom/ipaynow/plugin/view/b/c;->a(Lcom/ipaynow/plugin/view/b/d;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    sget v5, Lcom/ipaynow/plugin/view/template/layout/a;->cn:I

    int-to-double v6, v5

    const-wide/high16 v8, 0x4004000000000000L    # 2.5

    mul-double/2addr v6, v8

    double-to-int v5, v6

    sget v6, Lcom/ipaynow/plugin/view/template/layout/a;->cn:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/ipaynow/plugin/view/template/layout/a;->cm:Lcom/ipaynow/plugin/view/template/layout/b;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/view/template/layout/b;->C()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method


# virtual methods
.method protected abstract addBody(Landroid/widget/LinearLayout;)V
.end method

.method protected abstract addBody(Landroid/widget/LinearLayout;Z)V
.end method

.method protected addFoot()Landroid/widget/LinearLayout;
    .locals 6

    const/4 v5, 0x1

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ipaynow/plugin/view/template/layout/a;->cg:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v1, "#00FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ipaynow/plugin/view/template/layout/a;->cg:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, "\u6709\u4efb\u4f55\u7591\u95ee\u8bf7\u62e8\u6253\n4006365303"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x2

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-object v0
.end method

.method public generateUiTemplate(Lcom/ipaynow/plugin/view/template/layout/c;)Landroid/widget/LinearLayout;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/a;->cg:Landroid/app/Activity;

    const v1, 0x1030006

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTheme(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ipaynow/plugin/view/template/layout/a;->cg:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/a;->ch:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/a;->ch:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/a;->ch:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ipaynow/plugin/view/template/layout/a;->cg:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/a;->ci:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/a;->ci:Landroid/widget/LinearLayout;

    sget v1, Lcom/ipaynow/plugin/view/b/g;->header_title_id:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/ipaynow/plugin/view/template/layout/a;->cn:I

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/ipaynow/plugin/view/template/layout/a;->cg:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ipaynow/plugin/view/template/layout/a;->cj:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ipaynow/plugin/view/template/layout/a;->cj:Landroid/widget/LinearLayout;

    sget v2, Lcom/ipaynow/plugin/view/b/g;->root_body_linear_id:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setId(I)V

    iget-object v1, p0, Lcom/ipaynow/plugin/view/template/layout/a;->cj:Landroid/widget/LinearLayout;

    sget v2, Lcom/ipaynow/plugin/conf/PluginConfig$color;->white:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/ipaynow/plugin/view/template/layout/a;->cj:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v2, Lcom/ipaynow/plugin/view/template/layout/a;->co:I

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/ipaynow/plugin/view/template/layout/a;->ci:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/ipaynow/plugin/view/template/layout/a;->cj:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/ipaynow/plugin/view/template/layout/a;->ch:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/ipaynow/plugin/view/template/layout/a;->ci:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/a;->ch:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ipaynow/plugin/view/template/layout/a;->cj:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/a;->ci:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, v0}, Lcom/ipaynow/plugin/view/template/layout/a;->addHeader(Lcom/ipaynow/plugin/view/template/layout/c;Landroid/widget/LinearLayout;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/a;->cj:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/ipaynow/plugin/view/template/layout/a;->addBody(Landroid/widget/LinearLayout;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/a;->ch:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public generateUiTemplate(Lcom/ipaynow/plugin/view/template/layout/c;Z)Landroid/widget/LinearLayout;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ipaynow/plugin/view/template/layout/a;->generateUiTemplate(Lcom/ipaynow/plugin/view/template/layout/c;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/a;->ch:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/a;->cj:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, p2}, Lcom/ipaynow/plugin/view/template/layout/a;->addBody(Landroid/widget/LinearLayout;Z)V

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/a;->ch:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getRootBody()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/a;->cj:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected getRoot_header()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/a;->ci:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public releaseViewResource()V
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/a;->cl:Lcom/ipaynow/plugin/view/b/c;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/view/b/c;->ab()V

    return-void
.end method

.method public setAdaper(Lcom/ipaynow/plugin/view/template/layout/b;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/view/template/layout/a;->cm:Lcom/ipaynow/plugin/view/template/layout/b;

    return-void
.end method

.method protected setListViewHeightBasedOnChildren(Landroid/widget/ListView;I)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    move v0, v1

    move v2, v1

    :goto_1
    if-lt v0, v4, :cond_2

    invoke-virtual {p1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/ipaynow/plugin/view/template/layout/a;->bw:Lcom/ipaynow/plugin/view/b/a;

    invoke-virtual {p1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v4

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/ipaynow/plugin/view/b/a;->getDp(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-le v1, p2, :cond_1

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    invoke-interface {v3, v0, v5, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
