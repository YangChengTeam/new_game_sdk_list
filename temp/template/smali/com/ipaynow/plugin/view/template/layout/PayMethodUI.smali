.class public Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;
.super Lcom/ipaynow/plugin/view/template/layout/d;


# instance fields
.field private aA:Ljava/lang/String;

.field private cw:Lcom/ipaynow/plugin/view/template/layout/g;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/ipaynow/plugin/view/template/layout/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;->cw:Lcom/ipaynow/plugin/view/template/layout/g;

    iput-object p6, p0, Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;->aA:Ljava/lang/String;

    return-void
.end method

.method private addPaySelectList(Landroid/widget/FrameLayout;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;->bw:Lcom/ipaynow/plugin/view/b/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ipaynow/plugin/view/b/a;->getDp(I)I

    move-result v0

    invoke-direct {p0}, Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;->setShodow_body2()Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Lcom/ipaynow/plugin/view/c;

    iget-object v3, p0, Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;->cg:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/ipaynow/plugin/view/c;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;->bw:Lcom/ipaynow/plugin/view/b/a;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/ipaynow/plugin/view/b/a;->getDp(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;->bw:Lcom/ipaynow/plugin/view/b/a;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/ipaynow/plugin/view/b/a;->getDp(I)I

    move-result v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    new-instance v4, Lcom/ipaynow/plugin/view/template/layout/e;

    iget-object v5, p0, Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;->cg:Landroid/app/Activity;

    invoke-direct {v4, p0, v5}, Lcom/ipaynow/plugin/view/template/layout/e;-><init>(Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;Landroid/content/Context;)V

    invoke-virtual {p0, v4}, Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;->initPayAgentListView(Landroid/widget/ListView;)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v0, v7, v0, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private generatePayAgentShowData(Ljava/lang/String;)Lcom/ipaynow/plugin/view/template/a/c/b;
    .locals 11

    const/4 v2, 0x0

    const/16 v10, 0x28

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/ipaynow/plugin/view/template/a/c/b;

    invoke-direct {v4}, Lcom/ipaynow/plugin/view/template/a/c/b;-><init>()V

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v5

    array-length v6, v3

    move v1, v2

    :goto_0
    if-lt v1, v6, :cond_0

    return-object v4

    :cond_0
    aget-object v0, v3, v1

    const-string v7, "\\|"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v7, v0, v2

    const/4 v8, 0x1

    aget-object v8, v0, v8

    const/4 v0, 0x0

    sget-object v9, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->UPMP:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    invoke-virtual {v9}, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->getCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v5}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->isUpmpPayPluginInstalled()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;->cl:Lcom/ipaynow/plugin/view/b/c;

    sget-object v9, Lcom/ipaynow/plugin/view/b/d;->UPMP_LOGO:Lcom/ipaynow/plugin/view/b/d;

    invoke-virtual {v0, v9, v10, v10}, Lcom/ipaynow/plugin/view/b/c;->a(Lcom/ipaynow/plugin/view/b/d;II)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    new-instance v0, Lcom/ipaynow/plugin/view/template/a/c/c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v4, v9, v8, v7}, Lcom/ipaynow/plugin/view/template/a/c/c;-><init>(Lcom/ipaynow/plugin/view/template/a/c/b;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v9, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->ALIPAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    invoke-virtual {v9}, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->getCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v5}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->isAlipayPluginInstalled()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;->cl:Lcom/ipaynow/plugin/view/b/c;

    sget-object v9, Lcom/ipaynow/plugin/view/b/d;->ALI_LOGO:Lcom/ipaynow/plugin/view/b/d;

    invoke-virtual {v0, v9, v10, v10}, Lcom/ipaynow/plugin/view/b/c;->a(Lcom/ipaynow/plugin/view/b/d;II)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    new-instance v0, Lcom/ipaynow/plugin/view/template/a/c/c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v4, v9, v8, v7}, Lcom/ipaynow/plugin/view/template/a/c/c;-><init>(Lcom/ipaynow/plugin/view/template/a/c/b;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object v9, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->WECHAT_WAP_PAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    invoke-virtual {v9}, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->getCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v5}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->isWechatWapPluginInstalled()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v5}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->isWechatInstalled()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v5}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->isWechatPaySupportVersion()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;->cl:Lcom/ipaynow/plugin/view/b/c;

    sget-object v9, Lcom/ipaynow/plugin/view/b/d;->WECHAT_LOGO:Lcom/ipaynow/plugin/view/b/d;

    invoke-virtual {v0, v9, v10, v10}, Lcom/ipaynow/plugin/view/b/c;->a(Lcom/ipaynow/plugin/view/b/d;II)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    new-instance v0, Lcom/ipaynow/plugin/view/template/a/c/c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v4, v9, v8, v7}, Lcom/ipaynow/plugin/view/template/a/c/c;-><init>(Lcom/ipaynow/plugin/view/template/a/c/b;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-object v9, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->WECHAT_PLUGIN_PAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    invoke-virtual {v9}, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->getCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v5}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->isWechatPluginPluginInstalled()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v5}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->isWechatInstalled()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v5}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->isWechatPluginPaySupportVersion()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;->cl:Lcom/ipaynow/plugin/view/b/c;

    sget-object v9, Lcom/ipaynow/plugin/view/b/d;->WECHAT_LOGO:Lcom/ipaynow/plugin/view/b/d;

    invoke-virtual {v0, v9, v10, v10}, Lcom/ipaynow/plugin/view/b/c;->a(Lcom/ipaynow/plugin/view/b/d;II)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    new-instance v0, Lcom/ipaynow/plugin/view/template/a/c/c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v4, v9, v8, v7}, Lcom/ipaynow/plugin/view/template/a/c/c;-><init>(Lcom/ipaynow/plugin/view/template/a/c/b;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    sget-object v9, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->BAIDU_PAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    invoke-virtual {v9}, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->getCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v5}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->isBaiduPayPluginInstalled()Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;->cl:Lcom/ipaynow/plugin/view/b/c;

    sget-object v9, Lcom/ipaynow/plugin/view/b/d;->BAIDU_LOGO:Lcom/ipaynow/plugin/view/b/d;

    invoke-virtual {v0, v9, v10, v10}, Lcom/ipaynow/plugin/view/b/c;->a(Lcom/ipaynow/plugin/view/b/d;II)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    new-instance v0, Lcom/ipaynow/plugin/view/template/a/c/c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v4, v9, v8, v7}, Lcom/ipaynow/plugin/view/template/a/c/c;-><init>(Lcom/ipaynow/plugin/view/template/a/c/b;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    sget-object v9, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->QQ_PAY:Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;

    invoke-virtual {v9}, Lcom/ipaynow/plugin/conf/code/TRANS_TYPE;->getCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v5}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->isQqPayPluginInstalled()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v5}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->isQqPayInstalled()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v5}, Lcom/ipaynow/plugin/manager/cache/MessageCache;->isQqPaySupportVersion()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;->cl:Lcom/ipaynow/plugin/view/b/c;

    sget-object v9, Lcom/ipaynow/plugin/view/b/d;->QQ_LOGO:Lcom/ipaynow/plugin/view/b/d;

    invoke-virtual {v0, v9, v10, v10}, Lcom/ipaynow/plugin/view/b/c;->a(Lcom/ipaynow/plugin/view/b/d;II)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    new-instance v0, Lcom/ipaynow/plugin/view/template/a/c/c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v4, v9, v8, v7}, Lcom/ipaynow/plugin/view/template/a/c/c;-><init>(Lcom/ipaynow/plugin/view/template/a/c/b;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v4, v0}, Lcom/ipaynow/plugin/view/template/a/c/b;->a(Lcom/ipaynow/plugin/view/template/a/c/c;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0
.end method

.method private setShodow_body2()Landroid/widget/FrameLayout;
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;->bw:Lcom/ipaynow/plugin/view/b/a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ipaynow/plugin/view/b/a;->getDp(I)I

    new-instance v0, Lcom/ipaynow/plugin/view/d/d;

    iget-object v1, p0, Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;->cg:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/ipaynow/plugin/view/d/d;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sget-object v2, Lcom/ipaynow/plugin/view/d/e;->rect:Lcom/ipaynow/plugin/view/d/e;

    invoke-virtual {v0, v2}, Lcom/ipaynow/plugin/view/d/d;->a(Lcom/ipaynow/plugin/view/d/e;)V

    sget-object v2, Lcom/ipaynow/plugin/view/d/f;->z_depth2:Lcom/ipaynow/plugin/view/d/f;

    invoke-virtual {v0, v2}, Lcom/ipaynow/plugin/view/d/d;->a(Lcom/ipaynow/plugin/view/d/f;)V

    sget-object v2, Lcom/ipaynow/plugin/view/d/g;->z_depth2:Lcom/ipaynow/plugin/view/d/g;

    invoke-virtual {v0, v2}, Lcom/ipaynow/plugin/view/d/d;->a(Lcom/ipaynow/plugin/view/d/g;)V

    invoke-virtual {v0}, Lcom/ipaynow/plugin/view/d/d;->ao()V

    invoke-virtual {v0}, Lcom/ipaynow/plugin/view/d/d;->ap()V

    invoke-virtual {v0, v1}, Lcom/ipaynow/plugin/view/d/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method


# virtual methods
.method protected addBody(Landroid/widget/LinearLayout;Z)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/ipaynow/plugin/view/template/layout/d;->addBody(Landroid/widget/LinearLayout;Z)V

    invoke-virtual {p0}, Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;->getBodyTopBottomLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;->addPaySelectList(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public initPayAgentListView(Landroid/widget/ListView;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setOverScrollMode(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v4}, Landroid/widget/ListView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;->bw:Lcom/ipaynow/plugin/view/b/a;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/ipaynow/plugin/view/b/a;->getDp(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;->bw:Lcom/ipaynow/plugin/view/b/a;

    invoke-virtual {v0, v5}, Lcom/ipaynow/plugin/view/b/a;->getDp(I)I

    move-result v0

    iget-object v1, p0, Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;->bw:Lcom/ipaynow/plugin/view/b/a;

    invoke-virtual {v1, v5}, Lcom/ipaynow/plugin/view/b/a;->getDp(I)I

    move-result v1

    invoke-virtual {p1, v2, v0, v2, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;->aA:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;->generatePayAgentShowData(Ljava/lang/String;)Lcom/ipaynow/plugin/view/template/a/c/b;

    move-result-object v0

    new-instance v1, Lcom/ipaynow/plugin/view/template/a/b/d;

    iget-object v2, p0, Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;->cg:Landroid/app/Activity;

    iget-object v3, p0, Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;->cw:Lcom/ipaynow/plugin/view/template/layout/g;

    invoke-virtual {v3}, Lcom/ipaynow/plugin/view/template/layout/g;->D()Lcom/ipaynow/plugin/view/template/layout/f;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/ipaynow/plugin/view/template/a/b/d;-><init>(Landroid/content/Context;Lcom/ipaynow/plugin/view/template/a/c/b;Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/ipaynow/plugin/view/template/a/a;

    invoke-direct {v0, v1}, Lcom/ipaynow/plugin/view/template/a/a;-><init>(Lcom/ipaynow/plugin/view/template/a/a/b;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1}, Lcom/ipaynow/plugin/view/template/a/b/d;->ae()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :try_start_0
    const-class v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mEdgeGlowTop"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const-string v2, "mEdgeGlowBottom"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mGlow"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const-string v5, "#00000000"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const-string v5, "#00000000"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "mEdge"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const-string v4, "#00000000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const-string v3, "#00000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAdatpter(Lcom/ipaynow/plugin/view/template/layout/g;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ipaynow/plugin/view/template/layout/d;->setAdaper(Lcom/ipaynow/plugin/view/template/layout/b;)V

    iput-object p1, p0, Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;->cw:Lcom/ipaynow/plugin/view/template/layout/g;

    return-void
.end method
