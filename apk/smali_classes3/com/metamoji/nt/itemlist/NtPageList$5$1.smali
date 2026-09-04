.class Lcom/metamoji/nt/itemlist/NtPageList$5$1;
.super Ljava/lang/Object;
.source "NtPageList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/itemlist/NtPageList$5;->invoke(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/itemlist/NtPageList$5;

.field final synthetic val$pageIdToChangeTagEvent:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/itemlist/NtPageList$5;Ljava/util/Map;)V
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

    .line 182
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtPageList$5$1;->this$1:Lcom/metamoji/nt/itemlist/NtPageList$5;

    iput-object p2, p0, Lcom/metamoji/nt/itemlist/NtPageList$5$1;->val$pageIdToChangeTagEvent:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList$5$1;->this$1:Lcom/metamoji/nt/itemlist/NtPageList$5;

    iget-object v0, v0, Lcom/metamoji/nt/itemlist/NtPageList$5;->this$0:Lcom/metamoji/nt/itemlist/NtPageList;

    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtPageList$5$1;->val$pageIdToChangeTagEvent:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/itemlist/NtPageList;->updateTagIcon(Ljava/util/Map;)V

    return-void
.end method
