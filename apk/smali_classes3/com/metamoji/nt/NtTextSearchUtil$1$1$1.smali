.class Lcom/metamoji/nt/NtTextSearchUtil$1$1$1;
.super Ljava/lang/Object;
.source "NtTextSearchUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtTextSearchUtil$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/NtTextSearchUtil$1$1;

.field final synthetic val$provider:Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtTextSearchUtil$1$1;Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;)V
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

    .line 560
    iput-object p1, p0, Lcom/metamoji/nt/NtTextSearchUtil$1$1$1;->this$1:Lcom/metamoji/nt/NtTextSearchUtil$1$1;

    iput-object p2, p0, Lcom/metamoji/nt/NtTextSearchUtil$1$1$1;->val$provider:Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 563
    iget-object v0, p0, Lcom/metamoji/nt/NtTextSearchUtil$1$1$1;->val$provider:Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;

    iget-object v1, p0, Lcom/metamoji/nt/NtTextSearchUtil$1$1$1;->this$1:Lcom/metamoji/nt/NtTextSearchUtil$1$1;

    iget-object v1, v1, Lcom/metamoji/nt/NtTextSearchUtil$1$1;->this$0:Lcom/metamoji/nt/NtTextSearchUtil$1;

    iget-object v1, v1, Lcom/metamoji/nt/NtTextSearchUtil$1;->val$model:Lcom/metamoji/df/model/IModel;

    iget-object v2, p0, Lcom/metamoji/nt/NtTextSearchUtil$1$1$1;->this$1:Lcom/metamoji/nt/NtTextSearchUtil$1$1;

    iget-object v2, v2, Lcom/metamoji/nt/NtTextSearchUtil$1$1;->this$0:Lcom/metamoji/nt/NtTextSearchUtil$1;

    iget-object v2, v2, Lcom/metamoji/nt/NtTextSearchUtil$1;->val$range:Lcom/metamoji/nt/NtTextSearchPosition;

    invoke-interface {v0, v1, v2}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->setSelectedRange(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchPosition;)V

    return-void
.end method
