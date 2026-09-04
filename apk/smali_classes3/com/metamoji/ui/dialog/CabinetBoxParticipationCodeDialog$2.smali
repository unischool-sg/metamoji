.class Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog$2;
.super Ljava/lang/Object;
.source "CabinetBoxParticipationCodeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog$2;->this$0:Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 111
    iget-object p1, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog$2;->this$0:Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->handleUpdateParticipationCodeButtonTouchUp()V

    return-void
.end method
