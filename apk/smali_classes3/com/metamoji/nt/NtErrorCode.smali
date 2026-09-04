.class public final enum Lcom/metamoji/nt/NtErrorCode;
.super Ljava/lang/Enum;
.source "NtErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/nt/NtErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/nt/NtErrorCode;

.field public static final enum ERROR_CANCEL_CONVERT_DOCUMENT_WANNA_DUPLICATE:Lcom/metamoji/nt/NtErrorCode;

.field public static final enum ERROR_CANCEL_PASSWORD_AUTHENTICATION:Lcom/metamoji/nt/NtErrorCode;

.field public static final enum ERROR_CANT_READ_PDF:Lcom/metamoji/nt/NtErrorCode;

.field public static final enum ERROR_CREATE_EDITING_FOLDER:Lcom/metamoji/nt/NtErrorCode;

.field public static final enum ERROR_DOCUMENT_ID_NOT_FOUND_IN_RESTORE_EDITING:Lcom/metamoji/nt/NtErrorCode;

.field public static final enum ERROR_ENCRYPTED_PDF:Lcom/metamoji/nt/NtErrorCode;

.field public static final enum ERROR_IMPORT_COLLABO_NOTE_DUPLICATED:Lcom/metamoji/nt/NtErrorCode;

.field public static final enum ERROR_LAST:Lcom/metamoji/nt/NtErrorCode;

.field public static final enum ERROR_MODEL_COMPATIBILITY:Lcom/metamoji/nt/NtErrorCode;

.field public static final enum ERROR_MODEL_COMPATIBILITY_INVALID_COMPANYID:Lcom/metamoji/nt/NtErrorCode;

.field public static final enum ERROR_NO_PAGE_IN_PDF:Lcom/metamoji/nt/NtErrorCode;

.field public static final enum ERROR_RESTORE_CURRENT_EDITING:Lcom/metamoji/nt/NtErrorCode;

.field public static final enum ERROR_STOP_RISKY_OPERATION:Lcom/metamoji/nt/NtErrorCode;


# instance fields
.field private _intValue:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/nt/NtErrorCode;
    .locals 13

    .line 7
    sget-object v0, Lcom/metamoji/nt/NtErrorCode;->ERROR_CREATE_EDITING_FOLDER:Lcom/metamoji/nt/NtErrorCode;

    sget-object v1, Lcom/metamoji/nt/NtErrorCode;->ERROR_MODEL_COMPATIBILITY:Lcom/metamoji/nt/NtErrorCode;

    sget-object v2, Lcom/metamoji/nt/NtErrorCode;->ERROR_DOCUMENT_ID_NOT_FOUND_IN_RESTORE_EDITING:Lcom/metamoji/nt/NtErrorCode;

    sget-object v3, Lcom/metamoji/nt/NtErrorCode;->ERROR_NO_PAGE_IN_PDF:Lcom/metamoji/nt/NtErrorCode;

    sget-object v4, Lcom/metamoji/nt/NtErrorCode;->ERROR_ENCRYPTED_PDF:Lcom/metamoji/nt/NtErrorCode;

    sget-object v5, Lcom/metamoji/nt/NtErrorCode;->ERROR_CANT_READ_PDF:Lcom/metamoji/nt/NtErrorCode;

    sget-object v6, Lcom/metamoji/nt/NtErrorCode;->ERROR_CANCEL_PASSWORD_AUTHENTICATION:Lcom/metamoji/nt/NtErrorCode;

    sget-object v7, Lcom/metamoji/nt/NtErrorCode;->ERROR_STOP_RISKY_OPERATION:Lcom/metamoji/nt/NtErrorCode;

    sget-object v8, Lcom/metamoji/nt/NtErrorCode;->ERROR_CANCEL_CONVERT_DOCUMENT_WANNA_DUPLICATE:Lcom/metamoji/nt/NtErrorCode;

    sget-object v9, Lcom/metamoji/nt/NtErrorCode;->ERROR_MODEL_COMPATIBILITY_INVALID_COMPANYID:Lcom/metamoji/nt/NtErrorCode;

    sget-object v10, Lcom/metamoji/nt/NtErrorCode;->ERROR_IMPORT_COLLABO_NOTE_DUPLICATED:Lcom/metamoji/nt/NtErrorCode;

    sget-object v11, Lcom/metamoji/nt/NtErrorCode;->ERROR_RESTORE_CURRENT_EDITING:Lcom/metamoji/nt/NtErrorCode;

    sget-object v12, Lcom/metamoji/nt/NtErrorCode;->ERROR_LAST:Lcom/metamoji/nt/NtErrorCode;

    filled-new-array/range {v0 .. v12}, [Lcom/metamoji/nt/NtErrorCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 11
    new-instance v0, Lcom/metamoji/nt/NtErrorCode;

    const/4 v1, 0x0

    const/16 v2, 0x44c

    const-string v3, "ERROR_CREATE_EDITING_FOLDER"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/nt/NtErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtErrorCode;->ERROR_CREATE_EDITING_FOLDER:Lcom/metamoji/nt/NtErrorCode;

    .line 19
    new-instance v0, Lcom/metamoji/nt/NtErrorCode;

    const/4 v1, 0x1

    const/16 v2, 0x7d1

    const-string v3, "ERROR_MODEL_COMPATIBILITY"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/nt/NtErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtErrorCode;->ERROR_MODEL_COMPATIBILITY:Lcom/metamoji/nt/NtErrorCode;

    .line 26
    new-instance v0, Lcom/metamoji/nt/NtErrorCode;

    const/4 v1, 0x2

    const/16 v2, 0x7d2

    const-string v3, "ERROR_DOCUMENT_ID_NOT_FOUND_IN_RESTORE_EDITING"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/nt/NtErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtErrorCode;->ERROR_DOCUMENT_ID_NOT_FOUND_IN_RESTORE_EDITING:Lcom/metamoji/nt/NtErrorCode;

    .line 31
    new-instance v0, Lcom/metamoji/nt/NtErrorCode;

    const/4 v1, 0x3

    const/16 v2, 0x7d3

    const-string v3, "ERROR_NO_PAGE_IN_PDF"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/nt/NtErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtErrorCode;->ERROR_NO_PAGE_IN_PDF:Lcom/metamoji/nt/NtErrorCode;

    .line 36
    new-instance v0, Lcom/metamoji/nt/NtErrorCode;

    const/4 v1, 0x4

    const/16 v2, 0x7d4

    const-string v3, "ERROR_ENCRYPTED_PDF"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/nt/NtErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtErrorCode;->ERROR_ENCRYPTED_PDF:Lcom/metamoji/nt/NtErrorCode;

    .line 41
    new-instance v0, Lcom/metamoji/nt/NtErrorCode;

    const/4 v1, 0x5

    const/16 v2, 0x7d5

    const-string v3, "ERROR_CANT_READ_PDF"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/nt/NtErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtErrorCode;->ERROR_CANT_READ_PDF:Lcom/metamoji/nt/NtErrorCode;

    .line 46
    new-instance v0, Lcom/metamoji/nt/NtErrorCode;

    const/4 v1, 0x6

    const/16 v2, 0x7d6

    const-string v3, "ERROR_CANCEL_PASSWORD_AUTHENTICATION"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/nt/NtErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtErrorCode;->ERROR_CANCEL_PASSWORD_AUTHENTICATION:Lcom/metamoji/nt/NtErrorCode;

    .line 51
    new-instance v0, Lcom/metamoji/nt/NtErrorCode;

    const/4 v1, 0x7

    const/16 v2, 0x7d7

    const-string v3, "ERROR_STOP_RISKY_OPERATION"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/nt/NtErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtErrorCode;->ERROR_STOP_RISKY_OPERATION:Lcom/metamoji/nt/NtErrorCode;

    .line 54
    new-instance v0, Lcom/metamoji/nt/NtErrorCode;

    const/16 v1, 0x8

    const/16 v2, 0x7d8

    const-string v3, "ERROR_CANCEL_CONVERT_DOCUMENT_WANNA_DUPLICATE"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/nt/NtErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtErrorCode;->ERROR_CANCEL_CONVERT_DOCUMENT_WANNA_DUPLICATE:Lcom/metamoji/nt/NtErrorCode;

    .line 57
    new-instance v0, Lcom/metamoji/nt/NtErrorCode;

    const/16 v1, 0x9

    const/16 v2, 0x7d9

    const-string v3, "ERROR_MODEL_COMPATIBILITY_INVALID_COMPANYID"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/nt/NtErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtErrorCode;->ERROR_MODEL_COMPATIBILITY_INVALID_COMPANYID:Lcom/metamoji/nt/NtErrorCode;

    .line 60
    new-instance v0, Lcom/metamoji/nt/NtErrorCode;

    const/16 v1, 0xa

    const/16 v2, 0x7da

    const-string v3, "ERROR_IMPORT_COLLABO_NOTE_DUPLICATED"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/nt/NtErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtErrorCode;->ERROR_IMPORT_COLLABO_NOTE_DUPLICATED:Lcom/metamoji/nt/NtErrorCode;

    .line 65
    new-instance v0, Lcom/metamoji/nt/NtErrorCode;

    const/16 v1, 0xb

    const/16 v2, 0x7db

    const-string v3, "ERROR_RESTORE_CURRENT_EDITING"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/nt/NtErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtErrorCode;->ERROR_RESTORE_CURRENT_EDITING:Lcom/metamoji/nt/NtErrorCode;

    .line 68
    new-instance v0, Lcom/metamoji/nt/NtErrorCode;

    const/16 v1, 0xc

    const/4 v2, -0x1

    const-string v3, "ERROR_LAST"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/nt/NtErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtErrorCode;->ERROR_LAST:Lcom/metamoji/nt/NtErrorCode;

    .line 7
    invoke-static {}, Lcom/metamoji/nt/NtErrorCode;->$values()[Lcom/metamoji/nt/NtErrorCode;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/NtErrorCode;->$VALUES:[Lcom/metamoji/nt/NtErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 73
    iput p3, p0, Lcom/metamoji/nt/NtErrorCode;->_intValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/metamoji/nt/NtErrorCode;
    .locals 5

    .line 81
    invoke-static {}, Lcom/metamoji/nt/NtErrorCode;->values()[Lcom/metamoji/nt/NtErrorCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 82
    invoke-virtual {v3}, Lcom/metamoji/nt/NtErrorCode;->intValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    :cond_1
    sget-object p0, Lcom/metamoji/nt/NtErrorCode;->ERROR_LAST:Lcom/metamoji/nt/NtErrorCode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/nt/NtErrorCode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 7
    const-class v0, Lcom/metamoji/nt/NtErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/nt/NtErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/nt/NtErrorCode;
    .locals 1

    .line 7
    sget-object v0, Lcom/metamoji/nt/NtErrorCode;->$VALUES:[Lcom/metamoji/nt/NtErrorCode;

    invoke-virtual {v0}, [Lcom/metamoji/nt/NtErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/nt/NtErrorCode;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/metamoji/nt/NtErrorCode;->_intValue:I

    return v0
.end method
