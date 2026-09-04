.class Lcom/metamoji/ns/NsShareViewCommand$2;
.super Ljava/lang/Object;
.source "NsShareViewCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsShareViewCommand;->handleCollaboRoomEdit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/metamoji/ns/INsShareViewCommandCompletionAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dlg:Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 236
    iput-object p1, p0, Lcom/metamoji/ns/NsShareViewCommand$2;->val$dlg:Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/metamoji/ns/NsShareViewCommand$2;->val$dlg:Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;

    const-string v1, "NsCollaboRoomEditDialog"

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method
