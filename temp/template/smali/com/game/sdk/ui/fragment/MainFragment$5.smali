.class Lcom/game/sdk/ui/fragment/MainFragment$5;
.super Ljava/lang/Object;
.source "MainFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/fragment/MainFragment;->setOvalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/fragment/MainFragment;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/fragment/MainFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/MainFragment$5;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 657
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 654
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 645
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment$5;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/MainFragment;->access$27(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment$5;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v1}, Lcom/game/sdk/ui/fragment/MainFragment;->access$23(Lcom/game/sdk/ui/fragment/MainFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment$5;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v1}, Lcom/game/sdk/ui/fragment/MainFragment;->access$4(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "v_dot"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 646
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment$5;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v1}, Lcom/game/sdk/ui/fragment/MainFragment;->access$4(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "module_point_normal"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 648
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment$5;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/MainFragment;->access$27(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment$5;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v1}, Lcom/game/sdk/ui/fragment/MainFragment;->access$4(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "v_dot"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 649
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment$5;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v1}, Lcom/game/sdk/ui/fragment/MainFragment;->access$4(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "module_point_select"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 650
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment$5;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v0, p1}, Lcom/game/sdk/ui/fragment/MainFragment;->access$28(Lcom/game/sdk/ui/fragment/MainFragment;I)V

    .line 651
    return-void
.end method
