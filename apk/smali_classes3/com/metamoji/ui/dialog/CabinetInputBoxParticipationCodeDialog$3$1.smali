.class Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$3$1;
.super Ljava/lang/Object;
.source "CabinetInputBoxParticipationCodeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$3;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$3;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$3$1;->this$1:Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$3$1;->this$1:Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$3;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$3;->this$0:Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->-$$Nest$mrecalcSize(Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;)V

    return-void
.end method
