.class synthetic Lcom/metamoji/nt/NtSearchTextBar$7;
.super Ljava/lang/Object;
.source "NtSearchTextBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtSearchTextBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$nt$NtCommand:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 305
    invoke-static {}, Lcom/metamoji/nt/NtCommand;->values()[Lcom/metamoji/nt/NtCommand;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/nt/NtSearchTextBar$7;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    :try_start_0
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SEARCH_TEXT_NEXT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/metamoji/nt/NtSearchTextBar$7;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SEARCH_TEXT_PREV:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
