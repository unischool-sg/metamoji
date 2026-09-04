.class Lcom/metamoji/tle/TextLineExtractorManager$2;
.super Ljava/lang/Object;
.source "TextLineExtractorManager.java"

# interfaces
.implements Lcom/metamoji/cm/CmTaskManager$IOnCompleted;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/tle/TextLineExtractorManager;->textLineExtract(Lcom/metamoji/tle/TextLineExtractType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$tm:Lcom/metamoji/cm/CmTaskManager;


# direct methods
.method constructor <init>(Lcom/metamoji/cm/CmTaskManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 533
    iput-object p1, p0, Lcom/metamoji/tle/TextLineExtractorManager$2;->val$tm:Lcom/metamoji/cm/CmTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Throwable;)V
    .locals 1

    .line 535
    iget-object p1, p0, Lcom/metamoji/tle/TextLineExtractorManager$2;->val$tm:Lcom/metamoji/cm/CmTaskManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    return-void
.end method
