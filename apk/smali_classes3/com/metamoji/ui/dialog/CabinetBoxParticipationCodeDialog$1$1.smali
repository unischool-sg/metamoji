.class Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog$1$1;
.super Ljava/lang/Object;
.source "CabinetBoxParticipationCodeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog$1;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog$1;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog$1$1;->this$1:Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog$1$1;->this$1:Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog$1;->this$0:Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->-$$Nest$mrecalcSize(Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;)V

    return-void
.end method
