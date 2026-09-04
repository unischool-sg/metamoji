.class Lcom/metamoji/nt/NtShare$PrintAction$1;
.super Ljava/lang/Object;
.source "NtShare.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtShare$PrintAction;->sendFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtShare$PrintAction;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtShare$PrintAction;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1313
    iput-object p1, p0, Lcom/metamoji/nt/NtShare$PrintAction$1;->this$0:Lcom/metamoji/nt/NtShare$PrintAction;

    iput-object p2, p0, Lcom/metamoji/nt/NtShare$PrintAction$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(Ljava/io/File;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 1318
    invoke-static {p1, p0}, Lcom/metamoji/nt/NtPrintPDF;->print(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1316
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    .line 1317
    iget-object v1, p0, Lcom/metamoji/nt/NtShare$PrintAction$1;->val$file:Ljava/io/File;

    new-instance v2, Lcom/metamoji/nt/NtShare$PrintAction$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/metamoji/nt/NtShare$PrintAction$1$$ExternalSyntheticLambda0;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    return-void
.end method
