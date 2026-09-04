.class Lcom/metamoji/nt/NtStartup$2;
.super Ljava/lang/Object;
.source "NtStartup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtStartup;->setupCollaboInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtStartup;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtStartup;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 251
    iput-object p1, p0, Lcom/metamoji/nt/NtStartup$2;->this$0:Lcom/metamoji/nt/NtStartup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 254
    invoke-static {}, Lcom/metamoji/nt/NtStartup;->-$$Nest$smgetActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    instance-of v1, v0, Lcom/metamoji/noteanytime/StartupActivity;

    if-eqz v1, :cond_0

    .line 256
    check-cast v0, Lcom/metamoji/noteanytime/StartupActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/StartupActivity;->startMainActivity()V

    :cond_0
    return-void
.end method
