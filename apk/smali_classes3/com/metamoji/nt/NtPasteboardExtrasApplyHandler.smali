.class public interface abstract Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler;
.super Ljava/lang/Object;
.source "NtPasteboardExtrasApplyHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;
    }
.end annotation


# virtual methods
.method public abstract checkVersion(Ljava/util/Map;)Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;"
        }
    .end annotation
.end method

.method public abstract handleApplyPasteboardExtra(Ljava/util/Map;Lcom/metamoji/nt/NtDocument;Lcom/metamoji/nt/NtPageController;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/nt/NtDocument;",
            "Lcom/metamoji/nt/NtPageController;",
            ")V"
        }
    .end annotation
.end method
