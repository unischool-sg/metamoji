.class Lcom/metamoji/ns/NsCollaboCommand$12;
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

    .line 1337
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$12;->val$addressArray:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1340
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$12;->val$addressArray:[Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboDistributeByApplication([Ljava/lang/String;)V

    return-void
.end method
