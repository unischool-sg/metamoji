.class Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog$7;
.super Ljava/lang/Object;
.source "NsCollaboRoomEditDialog.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->onDone(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 266
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog$7;->this$0:Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 5

    .line 270
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog$7;->this$0:Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_completionAction:Lcom/metamoji/ns/INsShareViewCommandCompletionAction;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 273
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog$7;->this$0:Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;

    iget-boolean v1, v1, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_hasDate:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog$7;->this$0:Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_date:Ljava/util/Date;

    :cond_0
    invoke-static {v0}, Lcom/metamoji/ns/NsShareViewCommand;->convertDateFromDate(Ljava/util/Date;)J

    move-result-wide v0

    .line 274
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 275
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog$7;->this$0:Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;

    iget-object v3, v3, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_title:Ljava/lang/String;

    const-string/jumbo v4, "title"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v3, "openDate"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 278
    :cond_1
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog$7;->this$0:Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;

    iget-object v1, v1, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_completionAction:Lcom/metamoji/ns/INsShareViewCommandCompletionAction;

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {v1, p1, v0}, Lcom/metamoji/ns/INsShareViewCommandCompletionAction;->onCompleted(ZLjava/util/Map;)V

    :cond_2
    return-void
.end method
