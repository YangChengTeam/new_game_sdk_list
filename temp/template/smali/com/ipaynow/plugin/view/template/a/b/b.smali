.class public final Lcom/ipaynow/plugin/view/template/a/b/b;
.super Lcom/ipaynow/plugin/view/template/a/b/a;


# instance fields
.field private cz:Lcom/ipaynow/plugin/view/b/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/ipaynow/plugin/view/template/a/b/a;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipaynow/plugin/view/template/a/b/b;->cz:Lcom/ipaynow/plugin/view/b/a;

    invoke-static {}, Lcom/ipaynow/plugin/view/b/a;->Y()Lcom/ipaynow/plugin/view/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/view/template/a/b/b;->cz:Lcom/ipaynow/plugin/view/b/a;

    return-void
.end method


# virtual methods
.method public final a(ILandroid/view/View;)Landroid/view/View;
    .locals 11

    const/high16 v10, 0x41700000    # 15.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v6, 0x2

    const/4 v8, -0x2

    const/4 v7, 0x0

    if-nez p2, :cond_1

    new-instance v2, Lcom/ipaynow/plugin/view/template/a/b/c;

    invoke-direct {v2, p0, v7}, Lcom/ipaynow/plugin/view/template/a/b/c;-><init>(Lcom/ipaynow/plugin/view/template/a/b/b;B)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/a/b/b;->context:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v8}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/a/b/b;->context:Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/a/b/b;->cz:Lcom/ipaynow/plugin/view/b/a;

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Lcom/ipaynow/plugin/view/b/a;->getDp(I)I

    move-result v0

    invoke-virtual {v3, v7, v0, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    sget v0, Lcom/ipaynow/plugin/conf/PluginConfig$color;->black:I

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3, v6, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v0, 0x13

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {v4, v7, v8, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/a/b/b;->cz:Lcom/ipaynow/plugin/view/b/a;

    const/16 v5, 0xf

    invoke-virtual {v0, v5}, Lcom/ipaynow/plugin/view/b/a;->getDp(I)I

    move-result v0

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move-object v0, v1

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/a/b/b;->context:Landroid/content/Context;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/a/b/b;->cz:Lcom/ipaynow/plugin/view/b/a;

    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Lcom/ipaynow/plugin/view/b/a;->getDp(I)I

    move-result v0

    invoke-virtual {v4, v7, v0, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    sget v0, Lcom/ipaynow/plugin/conf/PluginConfig$color;->black:I

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, v6, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    if-ne p1, v6, :cond_0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/ipaynow/plugin/view/template/a/b/b;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v1

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    invoke-static {v2, v3}, Lcom/ipaynow/plugin/view/template/a/b/c;->a(Lcom/ipaynow/plugin/view/template/a/b/c;Landroid/widget/TextView;)V

    invoke-static {v2, v4}, Lcom/ipaynow/plugin/view/template/a/b/c;->b(Lcom/ipaynow/plugin/view/template/a/b/c;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, v1

    move-object v1, v2

    :goto_1
    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/a/b/b;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipaynow/plugin/view/template/a/c/a;

    invoke-static {v1}, Lcom/ipaynow/plugin/view/template/a/b/c;->a(Lcom/ipaynow/plugin/view/template/a/b/c;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ipaynow/plugin/view/template/a/c/a;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Lcom/ipaynow/plugin/view/template/a/b/c;->b(Lcom/ipaynow/plugin/view/template/a/b/c;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ipaynow/plugin/view/template/a/c/a;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_0
    const/4 v0, 0x5

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object v0, v1

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipaynow/plugin/view/template/a/b/c;

    move-object v1, v0

    goto :goto_1
.end method

.method public final ad()Landroid/widget/LinearLayout;
    .locals 13

    const/high16 v12, 0x41700000    # 15.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x2

    const/4 v9, -0x2

    const/4 v2, 0x0

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/a/b/b;->context:Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/a/b/b;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-object v3

    :cond_0
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/a/b/b;->context:Landroid/content/Context;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/a/b/b;->context:Landroid/content/Context;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/a/b/b;->cz:Lcom/ipaynow/plugin/view/b/a;

    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Lcom/ipaynow/plugin/view/b/a;->getDp(I)I

    move-result v0

    invoke-virtual {v5, v2, v0, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    sget v0, Lcom/ipaynow/plugin/conf/PluginConfig$color;->black:I

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v5, v10, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v0, 0x13

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v6, p0, Lcom/ipaynow/plugin/view/template/a/b/b;->cz:Lcom/ipaynow/plugin/view/b/a;

    const/16 v7, 0xf

    invoke-virtual {v6, v7}, Lcom/ipaynow/plugin/view/b/a;->getDp(I)I

    move-result v6

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/a/b/b;->context:Landroid/content/Context;

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/a/b/b;->cz:Lcom/ipaynow/plugin/view/b/a;

    const/4 v7, 0x6

    invoke-virtual {v0, v7}, Lcom/ipaynow/plugin/view/b/a;->getDp(I)I

    move-result v0

    invoke-virtual {v6, v2, v0, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    sget v0, Lcom/ipaynow/plugin/conf/PluginConfig$color;->black:I

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v6, v10, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    if-ne v1, v10, :cond_1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/ipaynow/plugin/view/template/a/b/b;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v8, 0x3

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v2, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/a/b/b;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipaynow/plugin/view/template/a/c/a;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/view/template/a/c/a;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/ipaynow/plugin/view/template/a/c/a;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v0, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v6}, Landroid/widget/TextView;->setSingleLine()V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public final d(I)Lcom/ipaynow/plugin/view/template/a/a/a;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/a/b/b;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipaynow/plugin/view/template/a/a/a;

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/a/b/b;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
