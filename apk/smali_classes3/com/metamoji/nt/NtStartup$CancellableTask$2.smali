.class Lcom/metamoji/nt/NtStartup$CancellableTask$2;
.super Ljava/lang/Object;
.source "NtStartup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtStartup$CancellableTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/NtStartup$CancellableTask;

.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtStartup$CancellableTask;Landroidx/fragment/app/FragmentActivity;)V
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

    .line 361
    iput-object p1, p0, Lcom/metamoji/nt/NtStartup$CancellableTask$2;->this$1:Lcom/metamoji/nt/NtStartup$CancellableTask;

    iput-object p2, p0, Lcom/metamoji/nt/NtStartup$CancellableTask$2;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/metamoji/nt/NtStartup$CancellableTask$2;->val$activity:Landroidx/fragment/app/FragmentActivity;

    check-cast v0, Lcom/metamoji/noteanytime/StartupActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/StartupActivity;->startMainActivity()V

    return-void
.end method
