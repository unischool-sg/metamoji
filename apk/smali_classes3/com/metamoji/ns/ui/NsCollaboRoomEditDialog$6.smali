.class Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog$6;
.super Ljava/lang/Object;
.source "NsCollaboRoomEditDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->tabButtonChanged(Z)V
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

    .line 234
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog$6;->this$0:Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 237
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog$6;->this$0:Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_dateTimePicker:Lcom/metamoji/ui/DateTimePickerDialog;

    return-void
.end method
