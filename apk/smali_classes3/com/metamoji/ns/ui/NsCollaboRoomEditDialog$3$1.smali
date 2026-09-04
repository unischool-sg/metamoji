.class Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog$3$1;
.super Ljava/lang/Object;
.source "NsCollaboRoomEditDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog$3;->action(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog$3;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog$3$1;->this$1:Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog$3$1;->this$1:Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog$3;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog$3;->this$0:Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->changeEnabled()V

    return-void
.end method
