.class Lcom/game/sdk/ui/ChargeActivity$1;
.super Landroid/os/Handler;
.source "ChargeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/ChargeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/ChargeActivity;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/ChargeActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    .line 202
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 204
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 277
    :goto_0
    return-void

    .line 207
    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 208
    .local v3, "result":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 209
    const-string v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 213
    .local v5, "result_obj":[Ljava/lang/String;
    aget-object v6, v5, v10

    aget-object v7, v5, v10

    const-string v8, "{"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    aget-object v8, v5, v10

    const-string v9, "}"

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 212
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 214
    .local v4, "resultStatus":I
    aget-object v6, v5, v11

    aget-object v7, v5, v11

    const-string v8, "{"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    aget-object v8, v5, v11

    const-string v9, "}"

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "memo":Ljava/lang/String;
    const/16 v6, 0x2328

    if-ne v4, v6, :cond_0

    .line 217
    iget-object v6, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iput-boolean v11, v6, Lcom/game/sdk/ui/ChargeActivity;->ischarge:Z

    .line 219
    iget-object v6, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    const-string v7, "\u652f\u4ed8\u6210\u529f"

    invoke-static {v6, v7}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 223
    iget-object v6, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-virtual {v6}, Lcom/game/sdk/ui/ChargeActivity;->finish()V

    .line 235
    .end local v2    # "memo":Ljava/lang/String;
    .end local v4    # "resultStatus":I
    .end local v5    # "result_obj":[Ljava/lang/String;
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "result:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    .restart local v2    # "memo":Ljava/lang/String;
    .restart local v4    # "resultStatus":I
    .restart local v5    # "result_obj":[Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iput-boolean v10, v6, Lcom/game/sdk/ui/ChargeActivity;->ischarge:Z

    .line 227
    iget-object v6, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-static {v6, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 231
    .end local v2    # "memo":Ljava/lang/String;
    .end local v4    # "resultStatus":I
    .end local v5    # "result_obj":[Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iput-boolean v10, v6, Lcom/game/sdk/ui/ChargeActivity;->ischarge:Z

    .line 232
    iget-object v6, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    const-string v7, "\u65e0\u6cd5\u5224\u522b\u652f\u4ed8\u662f\u5426\u6210\u529f\uff01\u5177\u4f53\u8bf7\u67e5\u770b\u540e\u53f0\u6570\u636e"

    invoke-static {v6, v7}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 239
    .end local v3    # "result":Ljava/lang/String;
    :pswitch_1
    iget-object v6, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-static {v6}, Lcom/game/sdk/ui/ChargeActivity;->access$2(Lcom/game/sdk/ui/ChargeActivity;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 240
    iget-object v6, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-static {v6}, Lcom/game/sdk/ui/ChargeActivity;->access$3(Lcom/game/sdk/ui/ChargeActivity;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 241
    iget-object v6, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-static {v6}, Lcom/game/sdk/ui/ChargeActivity;->access$4(Lcom/game/sdk/ui/ChargeActivity;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 243
    iget-object v6, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v6, v6, Lcom/game/sdk/ui/ChargeActivity;->chargeMoneys:[I

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v6, v6, Lcom/game/sdk/ui/ChargeActivity;->chargeMoneys:[I

    array-length v6, v6

    if-lez v6, :cond_2

    .line 244
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v6, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v6, v6, Lcom/game/sdk/ui/ChargeActivity;->tvs:[Landroid/widget/TextView;

    array-length v6, v6

    if-lt v1, v6, :cond_5

    .line 249
    .end local v1    # "i":I
    :cond_2
    iget-object v6, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-static {v6}, Lcom/game/sdk/ui/ChargeActivity;->access$5(Lcom/game/sdk/ui/ChargeActivity;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 250
    iget-object v6, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-static {v6}, Lcom/game/sdk/ui/ChargeActivity;->access$6(Lcom/game/sdk/ui/ChargeActivity;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 254
    :cond_3
    iget-object v6, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-static {v6}, Lcom/game/sdk/ui/ChargeActivity;->access$5(Lcom/game/sdk/ui/ChargeActivity;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 255
    iget-object v6, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-static {v6}, Lcom/game/sdk/ui/ChargeActivity;->access$7(Lcom/game/sdk/ui/ChargeActivity;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 256
    iget-object v6, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-static {v6}, Lcom/game/sdk/ui/ChargeActivity;->access$8(Lcom/game/sdk/ui/ChargeActivity;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 258
    iget-object v6, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-static {v6}, Lcom/game/sdk/ui/ChargeActivity;->access$9(Lcom/game/sdk/ui/ChargeActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 259
    iget-object v6, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    const-string v7, "0"

    invoke-static {v6, v7}, Lcom/game/sdk/ui/ChargeActivity;->access$10(Lcom/game/sdk/ui/ChargeActivity;Ljava/lang/String;)V

    .line 262
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<div><font color=\"#8a8a8a\">1\uff1a\u5145\u503c\u91d1\u989d\u2265"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-static {v7}, Lcom/game/sdk/ui/ChargeActivity;->access$9(Lcom/game/sdk/ui/ChargeActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u5143\u624d\u53ef\u4eab\u53d7\u5145\u503c\u798f\u5229\u3002<br>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 263
    const-string v7, "2\uff1a\u5e73\u53f0\u5e01\u3001\u6e38\u620f\u5e01\u533a\u522b:\u5e73\u53f0\u5e01\u53ef\u7528\u4e8e\u5e73\u53f0\u6240\u6709\u6e38\u620f,\u6e38\u620f\u5e01\u7528\u4e8e\u5355\u6b3e\u6307\u5b9a\u6e38\u620f\u3002<br>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "3\uff1a\u865a\u62df\u5145\u503c\u8d27\u5e01\u6982\u4e0d\u9000\u6b3e\u3002</font></div>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 262
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "html":Ljava/lang/String;
    iget-object v6, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-static {v6}, Lcom/game/sdk/ui/ChargeActivity;->access$11(Lcom/game/sdk/ui/ChargeActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 245
    .end local v0    # "html":Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_5
    iget-object v6, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v6, v6, Lcom/game/sdk/ui/ChargeActivity;->tvs:[Landroid/widget/TextView;

    aget-object v6, v6, v1

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v8, v8, Lcom/game/sdk/ui/ChargeActivity;->chargeMoneys:[I

    aget v8, v8, v1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    const-string v9, "charge_unit_text"

    invoke-virtual {v8, v9}, Lcom/game/sdk/ui/ChargeActivity;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 266
    .end local v1    # "i":I
    :cond_6
    iget-object v6, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-static {v6}, Lcom/game/sdk/ui/ChargeActivity;->access$7(Lcom/game/sdk/ui/ChargeActivity;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 267
    iget-object v6, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-static {v6}, Lcom/game/sdk/ui/ChargeActivity;->access$8(Lcom/game/sdk/ui/ChargeActivity;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 270
    :cond_7
    iget-object v6, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-static {v6}, Lcom/game/sdk/ui/ChargeActivity;->access$3(Lcom/game/sdk/ui/ChargeActivity;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 271
    iget-object v6, p0, Lcom/game/sdk/ui/ChargeActivity$1;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-static {v6}, Lcom/game/sdk/ui/ChargeActivity;->access$4(Lcom/game/sdk/ui/ChargeActivity;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
