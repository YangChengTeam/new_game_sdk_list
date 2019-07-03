.class public Lcom/game91/framework/act/DarkListActivity;
.super Landroid/app/Activity;
.source "DarkListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game91/framework/act/DarkListActivity$DarkListView;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/game91/framework/act/DarkListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/game91/framework/act/DarkListActivity;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/game91/framework/act/DarkListActivity;->openQQ()V

    return-void
.end method

.method static synthetic access$100(Lcom/game91/framework/act/DarkListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/game91/framework/act/DarkListActivity;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/game91/framework/act/DarkListActivity;->openPhone()V

    return-void
.end method

.method private butttonTextColor()Landroid/content/res/ColorStateList;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 157
    new-array v1, v6, [[I

    .line 158
    .local v1, "status":[[I
    new-array v2, v5, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    aput-object v2, v1, v4

    .line 159
    new-array v2, v4, [I

    aput-object v2, v1, v5

    .line 160
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v2, v6, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 161
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    return-object v0

    .line 160
    nop

    :array_0
    .array-data 4
        -0xfe8a2f
        -0xcd6906
    .end array-data
.end method

.method private getIntentError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    const-string v0, ">_< \u62b1\u6b49\uff0c\u60a8\u7684\u8d26\u53f7\u51fa\u73b0\u5f02\u5e38\uff0c\u8bf7\u8054\u7cfb\u5ba2\u670d"

    return-object v0
.end method

.method private openPhone()V
    .locals 5

    .prologue
    .line 130
    :try_start_0
    const-string v1, "4001398789"

    .line 131
    .local v1, "phone":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/game91/framework/act/DarkListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "phone":Ljava/lang/String;
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private openQQ()V
    .locals 5

    .prologue
    .line 120
    :try_start_0
    const-string v1, "mqqwpa://im/chat?chat_type=crm&uin=938181646&version=1&src_type=web&web_src=http:://wpa.b.qq.com"

    .line 121
    .local v1, "url3521":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/game91/framework/act/DarkListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v1    # "url3521":Ljava/lang/String;
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    invoke-static {}, Lcom/game91/core/instant/virtualapk/Systems;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "\u8bf7\u5b89\u88c5\u624b\u673aQQ"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 152
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 153
    invoke-virtual {p0, v0, v0}, Lcom/game91/framework/act/DarkListActivity;->overridePendingTransition(II)V

    .line 154
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v12, 0x42200000    # 40.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/16 v10, 0x11

    const/high16 v9, 0x41800000    # 16.0f

    const/4 v8, -0x1

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    .local v0, "contentView":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 37
    new-instance v1, Lcom/game91/framework/act/DarkListActivity$DarkListView;

    invoke-direct {v1, p0}, Lcom/game91/framework/act/DarkListActivity$DarkListView;-><init>(Landroid/content/Context;)V

    .line 38
    .local v1, "darkListView":Lcom/game91/framework/act/DarkListActivity$DarkListView;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 39
    invoke-virtual {p0, v0}, Lcom/game91/framework/act/DarkListActivity;->setContentView(Landroid/view/View;)V

    .line 41
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 42
    .local v3, "textView":Landroid/widget/TextView;
    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 43
    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 45
    const-string v4, "\u6e29\u99a8\u63d0\u793a"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    const/4 v4, -0x2

    invoke-virtual {v1, v3, v8, v4}, Lcom/game91/framework/act/DarkListActivity$DarkListView;->addView(Landroid/view/View;II)V

    .line 48
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v5}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v5

    invoke-virtual {v1, v4, v8, v5}, Lcom/game91/framework/act/DarkListActivity$DarkListView;->addView(Landroid/view/View;II)V

    .line 50
    new-instance v3, Landroid/widget/TextView;

    .end local v3    # "textView":Landroid/widget/TextView;
    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 51
    .restart local v3    # "textView":Landroid/widget/TextView;
    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 52
    const v4, -0xcccccd

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 54
    invoke-static {v9}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v9}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 55
    invoke-direct {p0}, Lcom/game91/framework/act/DarkListActivity;->getIntentError()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    const/4 v4, -0x2

    invoke-virtual {v1, v3, v8, v4}, Lcom/game91/framework/act/DarkListActivity$DarkListView;->addView(Landroid/view/View;II)V

    .line 58
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-static {v9}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v5

    invoke-virtual {v1, v4, v8, v5}, Lcom/game91/framework/act/DarkListActivity$DarkListView;->addView(Landroid/view/View;II)V

    .line 60
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 61
    .local v2, "line":Landroid/view/View;
    const v4, 0x7fafafaf

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 62
    invoke-static {v11}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v4

    invoke-virtual {v1, v2, v8, v4}, Lcom/game91/framework/act/DarkListActivity$DarkListView;->addView(Landroid/view/View;II)V

    .line 64
    new-instance v3, Landroid/widget/TextView;

    .end local v3    # "textView":Landroid/widget/TextView;
    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 65
    .restart local v3    # "textView":Landroid/widget/TextView;
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 66
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 67
    const-string v4, "QQ\u5ba2\u670d"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-direct {p0}, Lcom/game91/framework/act/DarkListActivity;->butttonTextColor()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 69
    new-instance v4, Lcom/game91/framework/act/DarkListActivity$1;

    invoke-direct {v4, p0}, Lcom/game91/framework/act/DarkListActivity$1;-><init>(Lcom/game91/framework/act/DarkListActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-static {v12}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v4

    invoke-virtual {v1, v3, v8, v4}, Lcom/game91/framework/act/DarkListActivity$DarkListView;->addView(Landroid/view/View;II)V

    .line 77
    new-instance v2, Landroid/view/View;

    .end local v2    # "line":Landroid/view/View;
    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 78
    .restart local v2    # "line":Landroid/view/View;
    const v4, 0x7fafafaf

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 79
    invoke-static {v11}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v4

    invoke-virtual {v1, v2, v8, v4}, Lcom/game91/framework/act/DarkListActivity$DarkListView;->addView(Landroid/view/View;II)V

    .line 81
    new-instance v3, Landroid/widget/TextView;

    .end local v3    # "textView":Landroid/widget/TextView;
    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 82
    .restart local v3    # "textView":Landroid/widget/TextView;
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 83
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 84
    const-string v4, "\u7535\u8bdd\u5ba2\u670d"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-direct {p0}, Lcom/game91/framework/act/DarkListActivity;->butttonTextColor()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 86
    new-instance v4, Lcom/game91/framework/act/DarkListActivity$2;

    invoke-direct {v4, p0}, Lcom/game91/framework/act/DarkListActivity$2;-><init>(Lcom/game91/framework/act/DarkListActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-static {v12}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v4

    invoke-virtual {v1, v3, v8, v4}, Lcom/game91/framework/act/DarkListActivity$DarkListView;->addView(Landroid/view/View;II)V

    .line 95
    new-instance v2, Landroid/view/View;

    .end local v2    # "line":Landroid/view/View;
    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 96
    .restart local v2    # "line":Landroid/view/View;
    const v4, 0x7fafafaf

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 97
    invoke-static {v11}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v4

    invoke-virtual {v1, v2, v8, v4}, Lcom/game91/framework/act/DarkListActivity$DarkListView;->addView(Landroid/view/View;II)V

    .line 99
    new-instance v3, Landroid/widget/TextView;

    .end local v3    # "textView":Landroid/widget/TextView;
    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 100
    .restart local v3    # "textView":Landroid/widget/TextView;
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 101
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 102
    const-string v4, "\u77e5\u9053\u4e86"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-direct {p0}, Lcom/game91/framework/act/DarkListActivity;->butttonTextColor()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 104
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 105
    new-instance v4, Lcom/game91/framework/act/DarkListActivity$3;

    invoke-direct {v4, p0}, Lcom/game91/framework/act/DarkListActivity$3;-><init>(Lcom/game91/framework/act/DarkListActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-static {v12}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v4

    invoke-virtual {v1, v3, v8, v4}, Lcom/game91/framework/act/DarkListActivity$DarkListView;->addView(Landroid/view/View;II)V

    .line 113
    return-void
.end method
