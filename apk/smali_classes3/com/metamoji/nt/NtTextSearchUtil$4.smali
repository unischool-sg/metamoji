.class Lcom/metamoji/nt/NtTextSearchUtil$4;
.super Ljava/lang/Object;
.source "NtTextSearchUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtTextSearchUtil;->processAfterSearchTextWithResult(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchPosition;Lcom/metamoji/df/model/IModel;ZLcom/metamoji/nt/NtTextSearchInUnitModelFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$searchTextBar:Lcom/metamoji/nt/NtSearchTextBar;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtSearchTextBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 761
    iput-object p1, p0, Lcom/metamoji/nt/NtTextSearchUtil$4;->val$searchTextBar:Lcom/metamoji/nt/NtSearchTextBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/metamoji/nt/NtTextSearchUtil$4;->val$searchTextBar:Lcom/metamoji/nt/NtSearchTextBar;

    if-eqz v0, :cond_0

    .line 775
    invoke-virtual {v0}, Lcom/metamoji/nt/NtSearchTextBar;->setSearchWordInputFocus()V

    :cond_0
    return-void
.end method
