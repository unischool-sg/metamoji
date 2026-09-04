.class Lcom/metamoji/nt/NtFocusManager$1;
.super Ljava/lang/Object;
.source "NtFocusManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtFocusManager;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtFocusOption;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtFocusManager;

.field final synthetic val$option:Lcom/metamoji/nt/NtFocusOption;

.field final synthetic val$unitController:Lcom/metamoji/nt/NtUnitController;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtFocusManager;Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtFocusOption;)V
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

    .line 139
    iput-object p1, p0, Lcom/metamoji/nt/NtFocusManager$1;->this$0:Lcom/metamoji/nt/NtFocusManager;

    iput-object p2, p0, Lcom/metamoji/nt/NtFocusManager$1;->val$unitController:Lcom/metamoji/nt/NtUnitController;

    iput-object p3, p0, Lcom/metamoji/nt/NtFocusManager$1;->val$option:Lcom/metamoji/nt/NtFocusOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/metamoji/nt/NtFocusManager$1;->this$0:Lcom/metamoji/nt/NtFocusManager;

    iget-object v1, p0, Lcom/metamoji/nt/NtFocusManager$1;->val$unitController:Lcom/metamoji/nt/NtUnitController;

    iget-object v2, p0, Lcom/metamoji/nt/NtFocusManager$1;->val$option:Lcom/metamoji/nt/NtFocusOption;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtFocusManager;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtFocusOption;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 139
    invoke-virtual {p0}, Lcom/metamoji/nt/NtFocusManager$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
