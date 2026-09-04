.class Lcom/metamoji/nt/itemlist/NtPageList$3$1;
.super Ljava/lang/Object;
.source "NtPageList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/itemlist/NtPageList$3;->invoke(Lcom/metamoji/df/controller/DfPageController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/itemlist/NtPageList$3;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/itemlist/NtPageList$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtPageList$3$1;->this$1:Lcom/metamoji/nt/itemlist/NtPageList$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList$3$1;->this$1:Lcom/metamoji/nt/itemlist/NtPageList$3;

    iget-object v0, v0, Lcom/metamoji/nt/itemlist/NtPageList$3;->this$0:Lcom/metamoji/nt/itemlist/NtPageList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/itemlist/NtPageList;->setMultiselectMode(ZZ)V

    return-void
.end method
