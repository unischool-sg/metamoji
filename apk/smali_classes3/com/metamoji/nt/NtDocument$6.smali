.class Lcom/metamoji/nt/NtDocument$6;
.super Ljava/lang/Object;
.source "NtDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtDocument;->updateVoiceNavigationButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtDocument;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtDocument;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1479
    iput-object p1, p0, Lcom/metamoji/nt/NtDocument$6;->this$0:Lcom/metamoji/nt/NtDocument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1481
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument$6;->this$0:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_VC_NAVIGATION:Lcom/metamoji/nt/NtCommand;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->selectCommand(Lcom/metamoji/nt/NtCommand;Z)Z

    return-void
.end method
