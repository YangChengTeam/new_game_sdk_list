.class Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$1;
.super Landroid/os/Handler;
.source "ChargeRecordSuccessFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$1;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    .line 133
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 135
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 199
    :goto_0
    return-void

    .line 137
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 138
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 139
    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, "result_obj":[Ljava/lang/String;
    aget-object v4, v3, v7

    aget-object v5, v3, v7

    const-string v6, "{"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    aget-object v6, v3, v7

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 142
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 144
    .local v2, "resultStatus":I
    aget-object v4, v3, v9

    aget-object v5, v3, v9

    const-string v6, "{"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    aget-object v6, v3, v9

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "memo":Ljava/lang/String;
    const/16 v4, 0x2328

    if-ne v2, v4, :cond_1

    .line 147
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$1;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v4}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$0(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Lcom/game/sdk/ui/ChargeRecordActivity;

    move-result-object v4

    const-string v5, "\u652f\u4ed8\u6210\u529f"

    invoke-static {v4, v5}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 148
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$1;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v4}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$1(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Lcom/game/sdk/adapter/ChargeRecordSuccessAdapter;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 149
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$1;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v4}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$1(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Lcom/game/sdk/adapter/ChargeRecordSuccessAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/game/sdk/adapter/ChargeRecordSuccessAdapter;->clearAllList()V

    .line 150
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$1;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-virtual {v4}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->loadChargeRecordData()V

    .line 159
    .end local v0    # "memo":Ljava/lang/String;
    .end local v2    # "resultStatus":I
    .end local v3    # "result_obj":[Ljava/lang/String;
    :cond_0
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "result:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    .restart local v0    # "memo":Ljava/lang/String;
    .restart local v2    # "resultStatus":I
    .restart local v3    # "result_obj":[Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$1;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v4}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$0(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Lcom/game/sdk/ui/ChargeRecordActivity;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 157
    .end local v0    # "memo":Ljava/lang/String;
    .end local v2    # "resultStatus":I
    .end local v3    # "result_obj":[Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$1;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v4}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$0(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Lcom/game/sdk/ui/ChargeRecordActivity;

    move-result-object v4

    const-string v5, "\u65e0\u6cd5\u5224\u522b\u652f\u4ed8\u662f\u5426\u6210\u529f\uff01\u5177\u4f53\u8bf7\u67e5\u770b\u540e\u53f0\u6570\u636e"

    invoke-static {v4, v5}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 163
    .end local v1    # "result":Ljava/lang/String;
    :pswitch_1
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$1;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v4}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$2(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 164
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$1;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-virtual {v4}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->stopAnimation()V

    .line 166
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$1;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v4}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$1(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Lcom/game/sdk/adapter/ChargeRecordSuccessAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$1;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    iget-object v5, v5, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->chargeRecordList:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/game/sdk/adapter/ChargeRecordSuccessAdapter;->addNewList(Ljava/util/List;)V

    .line 167
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$1;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v4}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$1(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Lcom/game/sdk/adapter/ChargeRecordSuccessAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/game/sdk/adapter/ChargeRecordSuccessAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 170
    :pswitch_2
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$1;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v4}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$0(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Lcom/game/sdk/ui/ChargeRecordActivity;

    move-result-object v4

    const-string v5, "\u53d6\u6d88\u8ba2\u5355\u6210\u529f"

    invoke-static {v4, v5}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 172
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$1;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-virtual {v4}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->loadChargeRecordData()V

    goto/16 :goto_0

    .line 175
    :pswitch_3
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$1;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v4}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$0(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Lcom/game/sdk/ui/ChargeRecordActivity;

    move-result-object v4

    const-string v5, "\u53d6\u6d88\u8ba2\u5355\u5931\u8d25"

    invoke-static {v4, v5}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 179
    :pswitch_4
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$1;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v4}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$2(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 180
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$1;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v4}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$3(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 181
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$1;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    iget-object v4, v4, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->chargeRecordList:Ljava/util/List;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$1;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    iget-object v4, v4, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->chargeRecordList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 182
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$1;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v4}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$4(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Landroid/widget/ListView;

    move-result-object v4

    iget-object v5, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$1;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v5}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$0(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Lcom/game/sdk/ui/ChargeRecordActivity;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 183
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$1;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v4}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$3(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 184
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$1;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v4}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$5(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$1;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v4}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$6(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    :goto_2
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$1;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-virtual {v4}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->stopAnimation()V

    goto/16 :goto_0

    .line 187
    :cond_3
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$1;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v4}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$6(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$1;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v4}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$5(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$1;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v4}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$5(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$1;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    const-string v6, "no_more_text"

    invoke-virtual {v5, v6}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$1;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v4}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$5(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment$1;->this$0:Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;

    invoke-static {v5}, Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;->access$0(Lcom/game/sdk/ui/fragment/ChargeRecordSuccessFragment;)Lcom/game/sdk/ui/ChargeRecordActivity;

    move-result-object v5

    invoke-static {v5, v8}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v7, v7, v7, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_2

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
