.class Lcom/metamoji/ns/NsCollaboManager$34;
.super Ljava/lang/Object;
.source "NsCollaboManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboManager;->handlePostMessage(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboManager;

.field final synthetic val$_message:Ljava/lang/String;

.field final synthetic val$_title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboManager;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 2889
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$34;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboManager$34;->val$_message:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ns/NsCollaboManager$34;->val$_title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2892
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$34;->val$_message:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager$34;->val$_title:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
