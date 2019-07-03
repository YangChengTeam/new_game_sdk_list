.class Lcom/game/sdk/adapter/ChargeRecordFailAdapter$2;
.super Ljava/lang/Object;
.source "ChargeRecordFailAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/adapter/ChargeRecordFailAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/adapter/ChargeRecordFailAdapter;

.field private final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/game/sdk/adapter/ChargeRecordFailAdapter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/adapter/ChargeRecordFailAdapter$2;->this$0:Lcom/game/sdk/adapter/ChargeRecordFailAdapter;

    iput p2, p0, Lcom/game/sdk/adapter/ChargeRecordFailAdapter$2;->val$pos:I

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/game/sdk/adapter/ChargeRecordFailAdapter$2;->this$0:Lcom/game/sdk/adapter/ChargeRecordFailAdapter;

    invoke-static {v0}, Lcom/game/sdk/adapter/ChargeRecordFailAdapter;->access$0(Lcom/game/sdk/adapter/ChargeRecordFailAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/game/sdk/adapter/ChargeRecordFailAdapter$2;->val$pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/domain/ChargeRecord;

    iget v0, v0, Lcom/game/sdk/domain/ChargeRecord;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/game/sdk/adapter/ChargeRecordFailAdapter$2;->this$0:Lcom/game/sdk/adapter/ChargeRecordFailAdapter;

    iget-object v0, v0, Lcom/game/sdk/adapter/ChargeRecordFailAdapter;->cancelDialog:Lcom/game/sdk/view/CancelConfigDialog;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/game/sdk/adapter/ChargeRecordFailAdapter$2;->this$0:Lcom/game/sdk/adapter/ChargeRecordFailAdapter;

    iget-object v1, v0, Lcom/game/sdk/adapter/ChargeRecordFailAdapter;->cancelDialog:Lcom/game/sdk/view/CancelConfigDialog;

    iget-object v0, p0, Lcom/game/sdk/adapter/ChargeRecordFailAdapter$2;->this$0:Lcom/game/sdk/adapter/ChargeRecordFailAdapter;

    invoke-static {v0}, Lcom/game/sdk/adapter/ChargeRecordFailAdapter;->access$0(Lcom/game/sdk/adapter/ChargeRecordFailAdapter;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/game/sdk/adapter/ChargeRecordFailAdapter$2;->val$pos:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/domain/ChargeRecord;

    iget-object v0, v0, Lcom/game/sdk/domain/ChargeRecord;->orderSn:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/game/sdk/view/CancelConfigDialog;->setOrderId(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/game/sdk/adapter/ChargeRecordFailAdapter$2;->this$0:Lcom/game/sdk/adapter/ChargeRecordFailAdapter;

    iget-object v0, v0, Lcom/game/sdk/adapter/ChargeRecordFailAdapter;->cancelDialog:Lcom/game/sdk/view/CancelConfigDialog;

    invoke-virtual {v0}, Lcom/game/sdk/view/CancelConfigDialog;->show()V

    .line 179
    :cond_0
    return-void
.end method
