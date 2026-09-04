.class Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$5;
.super Ljava/lang/Object;
.source "CabinetInputBoxParticipationCodeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->inputPassCode(Ljava/lang/String;)V
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

    .line 229
    iput-object p1, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$5;->this$0:Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$5;->this$0:Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->-$$Nest$mexecuteJoinApi(Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;)V

    return-void
.end method
