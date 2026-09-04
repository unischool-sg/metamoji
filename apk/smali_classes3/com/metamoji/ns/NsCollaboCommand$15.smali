.class Lcom/metamoji/ns/NsCollaboCommand$15;
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
.field final synthetic val$distributeClass:Ljava/lang/String;

.field final synthetic val$distributePackage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1382
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$15;->val$distributePackage:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboCommand$15;->val$distributeClass:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1385
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$15;->val$distributePackage:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboCommand$15;->val$distributeClass:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboDistributeByCustomApp(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
