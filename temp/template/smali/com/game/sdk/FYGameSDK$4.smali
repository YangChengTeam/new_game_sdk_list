.class Lcom/game/sdk/FYGameSDK$4;
.super Ljava/lang/Object;
.source "FYGameSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/FYGameSDK;->createFloatButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/FYGameSDK;


# direct methods
.method constructor <init>(Lcom/game/sdk/FYGameSDK;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/FYGameSDK$4;->this$0:Lcom/game/sdk/FYGameSDK;

    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 747
    iget-object v0, p0, Lcom/game/sdk/FYGameSDK$4;->this$0:Lcom/game/sdk/FYGameSDK;

    invoke-static {v0}, Lcom/game/sdk/FYGameSDK;->access$0(Lcom/game/sdk/FYGameSDK;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u8bf7\u624b\u52a8\u5f00\u542f\u60ac\u6d6e\u7a97\u6743\u9650"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 748
    return-void
.end method
