.class Lcom/metamoji/ui/cabinet/ShareViewObserver$1;
.super Ljava/lang/Object;
.source "ShareViewObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/ShareViewObserver;->notifyRequest(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/ShareViewObserver;

.field final synthetic val$docId:Ljava/lang/String;

.field final synthetic val$driveId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/ShareViewObserver;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 43
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewObserver$1;->this$0:Lcom/metamoji/ui/cabinet/ShareViewObserver;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/ShareViewObserver$1;->val$driveId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/ShareViewObserver$1;->val$docId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewObserver$1;->this$0:Lcom/metamoji/ui/cabinet/ShareViewObserver;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewObserver$1;->val$driveId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/ShareViewObserver$1;->val$docId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ui/cabinet/ShareViewObserver;->notifyRequest(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
