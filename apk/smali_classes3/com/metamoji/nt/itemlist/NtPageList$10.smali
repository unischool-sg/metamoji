.class Lcom/metamoji/nt/itemlist/NtPageList$10;
.super Ljava/lang/Object;
.source "NtPageList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/itemlist/NtPageList;->enableView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/itemlist/NtPageList;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/metamoji/nt/itemlist/NtPageList;Z)V
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

    .line 999
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtPageList$10;->this$0:Lcom/metamoji/nt/itemlist/NtPageList;

    iput-boolean p2, p0, Lcom/metamoji/nt/itemlist/NtPageList$10;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1002
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList$10;->this$0:Lcom/metamoji/nt/itemlist/NtPageList;

    iget-boolean v1, p0, Lcom/metamoji/nt/itemlist/NtPageList$10;->val$enabled:Z

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/itemlist/NtPageList;->enableView(Z)V

    return-void
.end method
