.class Lcom/game/sdk/ui/fragment/PhoneLoginFragment$4;
.super Ljava/lang/Object;
.source "PhoneLoginFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->codeRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

.field private final synthetic val$borderLineBtn:I

.field private final synthetic val$borderLineColor:I

.field private final synthetic val$borderLineGray:I

.field private final synthetic val$lineColor:I


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;IIII)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$4;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iput p2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$4;->val$borderLineBtn:I

    iput p3, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$4;->val$borderLineColor:I

    iput p4, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$4;->val$borderLineGray:I

    iput p5, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$4;->val$lineColor:I

    .line 944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 947
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$4;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->access$10(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    invoke-static {v0, v2}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->access$11(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;I)V

    if-gtz v1, :cond_0

    .line 948
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$4;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->access$12(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 949
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$4;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->access$12(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 950
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$4;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->access$12(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)Landroid/widget/Button;

    move-result-object v0

    iget v1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$4;->val$borderLineBtn:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 951
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$4;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->access$12(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$4;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    invoke-virtual {v1}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$4;->val$borderLineColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 959
    :goto_0
    return-void

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$4;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->access$12(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 955
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$4;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->access$12(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u91cd\u65b0\u53d1\u9001("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$4;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    invoke-static {v2}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->access$10(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 956
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$4;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->access$12(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)Landroid/widget/Button;

    move-result-object v0

    iget v1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$4;->val$borderLineGray:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 957
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$4;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->access$12(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$4;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    invoke-virtual {v1}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$4;->val$lineColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 958
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$4;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
