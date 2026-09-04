.class final Lcom/metamoji/lib/utils/UtObservableFlag$Closer;
.super Ljava/lang/Object;
.source "UtObservableFlag.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/UtObservableFlag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Closer"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/UtObservableFlag$Closer;",
        "Ljava/io/Closeable;",
        "<init>",
        "(Lcom/metamoji/lib/utils/UtObservableFlag;)V",
        "close",
        "",
        "utils"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/lib/utils/UtObservableFlag;


# direct methods
.method public constructor <init>(Lcom/metamoji/lib/utils/UtObservableFlag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/metamoji/lib/utils/UtObservableFlag$Closer;->this$0:Lcom/metamoji/lib/utils/UtObservableFlag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtObservableFlag$Closer;->this$0:Lcom/metamoji/lib/utils/UtObservableFlag;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/UtObservableFlag;->reset()I

    return-void
.end method
