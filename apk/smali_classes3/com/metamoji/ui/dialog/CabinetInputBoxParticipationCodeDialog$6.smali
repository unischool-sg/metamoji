.class Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$6;
.super Ljava/lang/Object;
.source "CabinetInputBoxParticipationCodeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->executeJoinApi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 243
    iput-object p1, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$6;->this$0:Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 246
    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_Msg_Error_Sync_Stop:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showCabinetAlertDialog(Ljava/lang/String;)Z

    return-void
.end method
