.class synthetic Lcom/metamoji/nt/NtPasteboardExtrasApplyManager$1;
.super Ljava/lang/Object;
.source "NtPasteboardExtrasApplyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtPasteboardExtrasApplyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$nt$NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    invoke-static {}, Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;->values()[Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/nt/NtPasteboardExtrasApplyManager$1;->$SwitchMap$com$metamoji$nt$NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult:[I

    :try_start_0
    sget-object v1, Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;->CAN_IGNORE:Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/metamoji/nt/NtPasteboardExtrasApplyManager$1;->$SwitchMap$com$metamoji$nt$NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult:[I

    sget-object v1, Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;->CAN_PASTE:Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/metamoji/nt/NtPasteboardExtrasApplyManager$1;->$SwitchMap$com$metamoji$nt$NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult:[I

    sget-object v1, Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;->CANNOT_PASTE:Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
