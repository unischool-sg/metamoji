.class synthetic Lcom/metamoji/cv/CvModelConverter$2;
.super Ljava/lang/Object;
.source "CvModelConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/cv/CvModelConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$cv$CvConvertType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    invoke-static {}, Lcom/metamoji/cv/CvConvertType;->values()[Lcom/metamoji/cv/CvConvertType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/cv/CvModelConverter$2;->$SwitchMap$com$metamoji$cv$CvConvertType:[I

    :try_start_0
    sget-object v1, Lcom/metamoji/cv/CvConvertType;->Outgoing:Lcom/metamoji/cv/CvConvertType;

    invoke-virtual {v1}, Lcom/metamoji/cv/CvConvertType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/metamoji/cv/CvModelConverter$2;->$SwitchMap$com$metamoji$cv$CvConvertType:[I

    sget-object v1, Lcom/metamoji/cv/CvConvertType;->Incoming:Lcom/metamoji/cv/CvConvertType;

    invoke-virtual {v1}, Lcom/metamoji/cv/CvConvertType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
