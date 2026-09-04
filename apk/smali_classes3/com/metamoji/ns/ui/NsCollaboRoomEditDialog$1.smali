.class Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog$1;
.super Ljava/lang/Object;
.source "NsCollaboRoomEditDialog.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 109
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog$1;->this$0:Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 114
    sget p1, Lcom/metamoji/noteanytime/R$id;->openDateNoDateBtn:I

    if-ne p2, p1, :cond_0

    .line 115
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog$1;->this$0:Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->-$$Nest$mtabButtonChanged(Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;Z)V

    :cond_0
    return-void
.end method
