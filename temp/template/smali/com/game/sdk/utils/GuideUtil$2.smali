.class Lcom/game/sdk/utils/GuideUtil$2;
.super Ljava/lang/Object;
.source "GuideUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/utils/GuideUtil;->initGuide(Landroid/app/Activity;[III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/utils/GuideUtil;

.field private final synthetic val$imgs:[I


# direct methods
.method constructor <init>(Lcom/game/sdk/utils/GuideUtil;[I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/utils/GuideUtil$2;->this$0:Lcom/game/sdk/utils/GuideUtil;

    iput-object p2, p0, Lcom/game/sdk/utils/GuideUtil$2;->val$imgs:[I

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 89
    iget-object v0, p0, Lcom/game/sdk/utils/GuideUtil$2;->this$0:Lcom/game/sdk/utils/GuideUtil;

    invoke-static {v0}, Lcom/game/sdk/utils/GuideUtil;->access$4(Lcom/game/sdk/utils/GuideUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v0

    const-string v1, "is_show_guide"

    invoke-virtual {v0, v1, v2}, Lcom/game/sdk/utils/PreferenceUtil;->putBoolean(Ljava/lang/String;Z)V

    .line 90
    iget-object v0, p0, Lcom/game/sdk/utils/GuideUtil$2;->this$0:Lcom/game/sdk/utils/GuideUtil;

    invoke-static {v0}, Lcom/game/sdk/utils/GuideUtil;->access$5(Lcom/game/sdk/utils/GuideUtil;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/game/sdk/utils/GuideUtil;->access$6(Lcom/game/sdk/utils/GuideUtil;I)V

    .line 91
    iget-object v0, p0, Lcom/game/sdk/utils/GuideUtil$2;->this$0:Lcom/game/sdk/utils/GuideUtil;

    invoke-static {v0}, Lcom/game/sdk/utils/GuideUtil;->access$5(Lcom/game/sdk/utils/GuideUtil;)I

    move-result v0

    if-le v0, v2, :cond_0

    .line 92
    iget-object v0, p0, Lcom/game/sdk/utils/GuideUtil$2;->this$0:Lcom/game/sdk/utils/GuideUtil;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/game/sdk/utils/GuideUtil;->access$6(Lcom/game/sdk/utils/GuideUtil;I)V

    .line 93
    iget-object v0, p0, Lcom/game/sdk/utils/GuideUtil$2;->this$0:Lcom/game/sdk/utils/GuideUtil;

    invoke-static {v0}, Lcom/game/sdk/utils/GuideUtil;->access$2(Lcom/game/sdk/utils/GuideUtil;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/utils/GuideUtil$2;->this$0:Lcom/game/sdk/utils/GuideUtil;

    invoke-static {v1}, Lcom/game/sdk/utils/GuideUtil;->access$3(Lcom/game/sdk/utils/GuideUtil;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/utils/GuideUtil$2;->this$0:Lcom/game/sdk/utils/GuideUtil;

    invoke-static {v0}, Lcom/game/sdk/utils/GuideUtil;->access$3(Lcom/game/sdk/utils/GuideUtil;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/utils/GuideUtil$2;->val$imgs:[I

    iget-object v2, p0, Lcom/game/sdk/utils/GuideUtil$2;->this$0:Lcom/game/sdk/utils/GuideUtil;

    invoke-static {v2}, Lcom/game/sdk/utils/GuideUtil;->access$5(Lcom/game/sdk/utils/GuideUtil;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
