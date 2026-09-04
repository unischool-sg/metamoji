.class synthetic Lcom/metamoji/nt/NtLocaleUtils$1;
.super Ljava/lang/Object;
.source "NtLocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtLocaleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$nt$NtLocale:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 61
    invoke-static {}, Lcom/metamoji/nt/NtLocale;->values()[Lcom/metamoji/nt/NtLocale;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/nt/NtLocaleUtils$1;->$SwitchMap$com$metamoji$nt$NtLocale:[I

    :try_start_0
    sget-object v1, Lcom/metamoji/nt/NtLocale;->zhHans:Lcom/metamoji/nt/NtLocale;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtLocale;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/metamoji/nt/NtLocaleUtils$1;->$SwitchMap$com$metamoji$nt$NtLocale:[I

    sget-object v1, Lcom/metamoji/nt/NtLocale;->zhHant:Lcom/metamoji/nt/NtLocale;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtLocale;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
