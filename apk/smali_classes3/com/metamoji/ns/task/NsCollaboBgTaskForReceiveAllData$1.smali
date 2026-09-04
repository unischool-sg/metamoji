.class Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$1;
.super Ljava/lang/Object;
.source "NsCollaboBgTaskForReceiveAllData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->onCompleted(ZLjava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$1;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 126
    invoke-static {}, Lcom/metamoji/ns/direction/NsDirectionManager;->closeDocumentDueToUnknownData()V

    return-void
.end method
