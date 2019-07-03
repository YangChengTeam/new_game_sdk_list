.class Lcom/game/sdk/ui/fragment/AccountLoginFragment$2;
.super Ljava/lang/Object;
.source "AccountLoginFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/fragment/AccountLoginFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/fragment/AccountLoginFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$2;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "row"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 477
    .local p1, "adapterview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$2;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->access$2(Lcom/game/sdk/ui/fragment/AccountLoginFragment;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 479
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$2;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$2;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->access$3(Lcom/game/sdk/ui/fragment/AccountLoginFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/domain/UserInfo;

    invoke-static {v1, v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->access$4(Lcom/game/sdk/ui/fragment/AccountLoginFragment;Lcom/game/sdk/domain/UserInfo;)V

    .line 480
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$2;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$2;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    invoke-static {v1}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->access$5(Lcom/game/sdk/ui/fragment/AccountLoginFragment;)Lcom/game/sdk/domain/UserInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->access$6(Lcom/game/sdk/ui/fragment/AccountLoginFragment;Lcom/game/sdk/domain/UserInfo;)V

    .line 481
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$2;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->access$0(Lcom/game/sdk/ui/fragment/AccountLoginFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$2;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    invoke-static {v1}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->access$5(Lcom/game/sdk/ui/fragment/AccountLoginFragment;)Lcom/game/sdk/domain/UserInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$2;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->access$1(Lcom/game/sdk/ui/fragment/AccountLoginFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$2;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    invoke-static {v1}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->access$5(Lcom/game/sdk/ui/fragment/AccountLoginFragment;)Lcom/game/sdk/domain/UserInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 483
    return-void
.end method
