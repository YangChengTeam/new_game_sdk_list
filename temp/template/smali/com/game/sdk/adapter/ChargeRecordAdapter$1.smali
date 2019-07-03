.class Lcom/game/sdk/adapter/ChargeRecordAdapter$1;
.super Ljava/lang/Object;
.source "ChargeRecordAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/adapter/ChargeRecordAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/adapter/ChargeRecordAdapter;

.field private final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/game/sdk/adapter/ChargeRecordAdapter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter$1;->this$0:Lcom/game/sdk/adapter/ChargeRecordAdapter;

    iput p2, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter$1;->val$pos:I

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter$1;->this$0:Lcom/game/sdk/adapter/ChargeRecordAdapter;

    invoke-static {v0}, Lcom/game/sdk/adapter/ChargeRecordAdapter;->access$0(Lcom/game/sdk/adapter/ChargeRecordAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter$1;->val$pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/domain/ChargeRecord;

    iget v0, v0, Lcom/game/sdk/domain/ChargeRecord;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter$1;->this$0:Lcom/game/sdk/adapter/ChargeRecordAdapter;

    iget-object v1, v0, Lcom/game/sdk/adapter/ChargeRecordAdapter;->payListener:Lcom/game/sdk/adapter/ChargeRecordAdapter$ContinuePayListener;

    iget-object v0, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter$1;->this$0:Lcom/game/sdk/adapter/ChargeRecordAdapter;

    invoke-static {v0}, Lcom/game/sdk/adapter/ChargeRecordAdapter;->access$0(Lcom/game/sdk/adapter/ChargeRecordAdapter;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter$1;->val$pos:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/domain/ChargeRecord;

    iget-object v2, v0, Lcom/game/sdk/domain/ChargeRecord;->orderSn:Ljava/lang/String;

    iget-object v0, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter$1;->this$0:Lcom/game/sdk/adapter/ChargeRecordAdapter;

    invoke-static {v0}, Lcom/game/sdk/adapter/ChargeRecordAdapter;->access$0(Lcom/game/sdk/adapter/ChargeRecordAdapter;)Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lcom/game/sdk/adapter/ChargeRecordAdapter$1;->val$pos:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/domain/ChargeRecord;

    iget-object v0, v0, Lcom/game/sdk/domain/ChargeRecord;->rmbMoney:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/game/sdk/adapter/ChargeRecordAdapter$ContinuePayListener;->continuePay(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_0
    return-void
.end method
