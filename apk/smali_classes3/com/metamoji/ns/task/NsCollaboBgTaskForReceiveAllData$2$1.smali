.class Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$2$1;
.super Ljava/lang/Object;
.source "NsCollaboBgTaskForReceiveAllData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$2;->call()Lcom/metamoji/df/controller/ControllerContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$2;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$2$1;->this$1:Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$2$1;->this$1:Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$2;

    iget-object v0, v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$2;->val$pageController:Lcom/metamoji/nt/NtPageController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtPageController;->makeLayersForSchool(Z)V

    return-void
.end method
