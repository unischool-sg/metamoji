.class Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog$4;
.super Ljava/lang/Object;
.source "NsCollaboRoomEditDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->changeEnabled()V
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

    .line 185
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog$4;->this$0:Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog$4;->this$0:Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;

    invoke-virtual {v0, p1}, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->onDone(Landroid/view/View;)V

    return-void
.end method
