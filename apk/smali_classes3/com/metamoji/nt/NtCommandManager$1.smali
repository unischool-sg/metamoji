.class Lcom/metamoji/nt/NtCommandManager$1;
.super Ljava/lang/Object;
.source "NtCommandManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtCommandManager;->execCommandOnBackground(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtCommandManager;

.field final synthetic val$command:Lcom/metamoji/nt/NtCommand;

.field final synthetic val$options:Lcom/metamoji/cm/CmContext;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtCommandManager;Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lcom/metamoji/nt/NtCommandManager$1;->this$0:Lcom/metamoji/nt/NtCommandManager;

    iput-object p2, p0, Lcom/metamoji/nt/NtCommandManager$1;->val$command:Lcom/metamoji/nt/NtCommand;

    iput-object p3, p0, Lcom/metamoji/nt/NtCommandManager$1;->val$options:Lcom/metamoji/cm/CmContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/metamoji/nt/NtCommandManager$1;->this$0:Lcom/metamoji/nt/NtCommandManager;

    iget-object v1, p0, Lcom/metamoji/nt/NtCommandManager$1;->val$command:Lcom/metamoji/nt/NtCommand;

    iget-object v2, p0, Lcom/metamoji/nt/NtCommandManager$1;->val$options:Lcom/metamoji/cm/CmContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void
.end method
