.class Lcom/metamoji/ns/task/NsCollaboBgTaskForGetMemberList$2;
.super Ljava/lang/Object;
.source "NsCollaboBgTaskForGetMemberList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/task/NsCollaboBgTaskForGetMemberList;->onCompleted(ZLjava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetMemberList;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForGetMemberList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetMemberList$2;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetMemberList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetMemberList$2;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetMemberList;

    iget-object v0, v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetMemberList;->m_getNickNamesMapFromServerAfterAction:Lcom/metamoji/ns/task/INsGetNickNamesMapFromServerAfterAction;

    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetMemberList$2;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetMemberList;

    iget-object v1, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetMemberList;->m_nickNamesMapFromServer:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/metamoji/ns/task/INsGetNickNamesMapFromServerAfterAction;->action(Ljava/util/Map;)V

    return-void
.end method
