.class Lcom/metamoji/ui/dialog/UiPasswordDialog$5$1;
.super Ljava/lang/Object;
.source "UiPasswordDialog.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiPasswordDialog$IPbeResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/UiPasswordDialog$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/UiPasswordDialog$5;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/UiPasswordDialog$5;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 339
    iput-object p1, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$5$1;->this$0:Lcom/metamoji/ui/dialog/UiPasswordDialog$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/metamoji/cm/PBE;)V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$5$1;->this$0:Lcom/metamoji/ui/dialog/UiPasswordDialog$5;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/UiPasswordDialog$5;->val$syncPbe:Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;->setResult(Lcom/metamoji/cm/PBE;)V

    return-void
.end method
