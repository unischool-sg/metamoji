.class Lcom/metamoji/nt/itemlist/NtPageList$1$1;
.super Ljava/lang/Object;
.source "NtPageList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/itemlist/NtPageList$1;->invoke(Lcom/metamoji/df/controller/PageEventContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/itemlist/NtPageList$1;

.field final synthetic val$arg:Lcom/metamoji/df/controller/PageEventContext;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/itemlist/NtPageList$1;Lcom/metamoji/df/controller/PageEventContext;)V
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

    .line 106
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtPageList$1$1;->this$1:Lcom/metamoji/nt/itemlist/NtPageList$1;

    iput-object p2, p0, Lcom/metamoji/nt/itemlist/NtPageList$1$1;->val$arg:Lcom/metamoji/df/controller/PageEventContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList$1$1;->this$1:Lcom/metamoji/nt/itemlist/NtPageList$1;

    iget-object v0, v0, Lcom/metamoji/nt/itemlist/NtPageList$1;->this$0:Lcom/metamoji/nt/itemlist/NtPageList;

    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtPageList$1$1;->val$arg:Lcom/metamoji/df/controller/PageEventContext;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/itemlist/NtPageList;->onPageChanged(Lcom/metamoji/df/controller/PageEventContext;)V

    return-void
.end method
