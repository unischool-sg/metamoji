.class Lcom/metamoji/ns/NsCollaboCommand$13;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboDistribute(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$addressArray:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1346
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$13;->val$addressArray:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x1

    .line 1349
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboCommand$13;->val$addressArray:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboDistributeUrlByApplication(Z[Ljava/lang/String;)V

    return-void
.end method
