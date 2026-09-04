.class Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$2;
.super Ljava/lang/Object;
.source "WebDavSelectDoc.java"

# interfaces
.implements Lcom/metamoji/cm/CmTaskManager$IOnCompleted;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/WebDavSelectDoc$4;->action(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/dialog/WebDavSelectDoc$4;

.field final synthetic val$result:Lcom/metamoji/cm/mutable/MutableInt;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/WebDavSelectDoc$4;Lcom/metamoji/cm/mutable/MutableInt;Ljava/lang/String;)V
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

    .line 193
    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$2;->this$1:Lcom/metamoji/ui/dialog/WebDavSelectDoc$4;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$2;->val$result:Lcom/metamoji/cm/mutable/MutableInt;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Throwable;)V
    .locals 1

    .line 196
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$2$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$2$1;-><init>(Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$2;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
