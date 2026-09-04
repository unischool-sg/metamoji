.class public Lcom/metamoji/mazec/util/MessageParam;
.super Ljava/lang/Object;
.source "MessageParam.java"

# interfaces
.implements Lcom/metamoji/mazec/util/MonitorTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/mazec/util/MessageParam$ContextConfig;
    }
.end annotation


# static fields
.field public static final MSG_ACTIVATE_CONTEXT:I = 0x15

.field public static final MSG_CLOSE:I = 0x1

.field public static final MSG_CNV_BREAK_SEQUENCE:I = 0x6b

.field public static final MSG_CNV_CLEAR:I = 0x69

.field public static final MSG_CNV_COMMIT_WORD:I = 0x6a

.field public static final MSG_CNV_CONVERT:I = 0x68

.field public static final MSG_CNV_CONVERTED:I = 0x3

.field public static final MSG_CNV_ENABLE_CONVERSION:I = 0x6f

.field public static final MSG_CNV_ENABLE_LEARNING:I = 0x6e

.field public static final MSG_CNV_ENTER:I = 0x67

.field public static final MSG_CNV_INPUT_CHAR:I = 0x65

.field public static final MSG_CNV_PREDICT:I = 0x66

.field public static final MSG_CNV_PREDICTED:I = 0x4

.field public static final MSG_CNV_RESET_CONVERTER:I = 0x6d

.field public static final MSG_DEACTIVATE_CONTEXT:I = 0x16

.field public static final MSG_DESTROY_HANDLER:I = 0xc

.field public static final MSG_DIC_DOWNLOAD:I = 0x5

.field public static final MSG_HW_CHANGE_FILTER:I = 0x3b

.field public static final MSG_HW_CLEAR_CANDIDATE_SELECTIONS:I = 0x3e

.field public static final MSG_HW_CLEAR_RECOGNITION_LEARNING:I = 0x41

.field public static final MSG_HW_CLEAR_RECOGNITION_LEARNING_RESULT:I = 0x109

.field public static final MSG_HW_CLEAR_STROKES:I = 0x37

.field public static final MSG_HW_DELETE_LEARNED_ENTRY:I = 0x44

.field public static final MSG_HW_DELETE_LEARNED_ENTRY_RESULT:I = 0x10c

.field public static final MSG_HW_GET_FILTER_CHARACTERS:I = 0x46

.field public static final MSG_HW_GET_FILTER_CHARACTERS_RESULT:I = 0x10e

.field public static final MSG_HW_GET_LEARNED_KANJI_CHARACTERS:I = 0x47

.field public static final MSG_HW_GET_LEARNED_KANJI_CHARACTERS_RESULT:I = 0x10f

.field public static final MSG_HW_GET_RECOGNITION_LEARNED_ENTRIES:I = 0x45

.field public static final MSG_HW_GET_RECOGNITION_LEARNED_ENTRIES_RESULT:I = 0x10d

.field public static final MSG_HW_GET_RECOGNITION_LEARNING_COUNT:I = 0x42

.field public static final MSG_HW_GET_RECOGNITION_LEARNING_COUNT_RESULT:I = 0x10a

.field public static final MSG_HW_LEARN_CHAR_RECOGNITION:I = 0x43

.field public static final MSG_HW_LEARN_CHAR_RECOGNITION_RESULT:I = 0x10b

.field public static final MSG_HW_LEARN_SELECTED_RECOG_CAND:I = 0x40

.field public static final MSG_HW_RECOGNIZED:I = 0x2

.field public static final MSG_HW_RECOGNIZE_STRING:I = 0x35

.field public static final MSG_HW_SET_CAND_BLOCK_SELECTION:I = 0x3d

.field public static final MSG_HW_SET_CAND_LETTER_SELECTION:I = 0x3c

.field public static final MSG_HW_SET_LANG:I = 0x3a

.field public static final MSG_HW_SET_WORDSPACING_COEF:I = 0x3f

.field public static final MSG_INIT_HANDLER:I = 0xb


# instance fields
.field private mIsCanceled:Z

.field public msgTime:J

.field public obj:Ljava/lang/Object;

.field public racContext:Lcom/metamoji/mazec/RACContext;

.field public replyTo:Lcom/metamoji/mazec/util/MessageHandler;


# direct methods
.method public constructor <init>(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageHandler;)V
    .locals 6

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 100
    invoke-direct/range {v0 .. v5}, Lcom/metamoji/mazec/util/MessageParam;-><init>(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageHandler;Ljava/lang/Object;J)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageHandler;J)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    .line 111
    invoke-direct/range {v0 .. v5}, Lcom/metamoji/mazec/util/MessageParam;-><init>(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageHandler;Ljava/lang/Object;J)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageHandler;Ljava/lang/Object;)V
    .locals 6

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 106
    invoke-direct/range {v0 .. v5}, Lcom/metamoji/mazec/util/MessageParam;-><init>(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageHandler;Ljava/lang/Object;J)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageHandler;Ljava/lang/Object;J)V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/metamoji/mazec/util/MessageParam;->mIsCanceled:Z

    .line 116
    iput-object p1, p0, Lcom/metamoji/mazec/util/MessageParam;->racContext:Lcom/metamoji/mazec/RACContext;

    .line 117
    iput-object p2, p0, Lcom/metamoji/mazec/util/MessageParam;->replyTo:Lcom/metamoji/mazec/util/MessageHandler;

    .line 118
    iput-object p3, p0, Lcom/metamoji/mazec/util/MessageParam;->obj:Ljava/lang/Object;

    .line 119
    iput-wide p4, p0, Lcom/metamoji/mazec/util/MessageParam;->msgTime:J

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcom/metamoji/mazec/util/MessageParam;->mIsCanceled:Z

    return-void
.end method

.method public declared-synchronized isCanceled()Z
    .locals 1

    monitor-enter p0

    .line 138
    :try_start_0
    iget-boolean v0, p0, Lcom/metamoji/mazec/util/MessageParam;->mIsCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
