.class public Lcom/metamoji/mazec/MazecIms;
.super Lcom/metamoji/inputmethodservice/InputMethodService;
.source "MazecIms.java"

# interfaces
.implements Lcom/metamoji/mazec/util/MessageHandler;
.implements Lcom/metamoji/mazec/ui/KeyboardManager$OnKeyboardListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;,
        Lcom/metamoji/mazec/MazecIms$EventShooter;,
        Lcom/metamoji/mazec/MazecIms$HwStrokeListenerImpl;,
        Lcom/metamoji/mazec/MazecIms$OnBackListener;,
        Lcom/metamoji/mazec/MazecIms$EventShooterWithParam;
    }
.end annotation


# static fields
.field public static final CLIENT_TYPE_7NOTES:I = 0x1

.field public static final CLIENT_TYPE_NOTEANYTIME:I = 0x2

.field public static final CLIENT_TYPE_UNKNOWN:I = 0x0

.field public static final DEFAULT_MAZEC_HEIGHT_RANK:I = 0x4

.field public static final DEFAULT_MAZEC_JP_SPACE:I = 0x0

.field public static final INPUT_MODE_KEYBOARD:I = 0x3

.field public static final INPUT_MODE_STROKE:I = 0x1

.field public static final INPUT_MODE_TEXT:I = 0x2

.field public static final MAZEC_CMD_CLEAR_CNV_RESULT:I = 0x15

.field public static final MAZEC_CMD_COMMIT_KEY_EVENT:I = 0x9

.field public static final MAZEC_CMD_COMMIT_KEY_TEXT:I = 0xb

.field public static final MAZEC_CMD_CONVERT:I = 0xe

.field public static final MAZEC_CMD_DELETE_HWR_CANDIDATES:I = 0x6

.field public static final MAZEC_CMD_PREDICT:I = 0xd

.field public static final MAZEC_CMD_RECOGNIZE:I = 0xc

.field public static final MAZEC_CMD_REGISTER_HWR_CHAR:I = 0x17

.field public static final MAZEC_CMD_RERECOGNIZE:I = 0x14

.field public static final MAZEC_CMD_SELECT_HWR_CANDIDATE:I = 0x5

.field public static final MAZEC_CMD_SET_GUIDELINES:I = 0xf

.field public static final MAZEC_CMD_SET_HW_CAND_LETTER_SELECTION:I = 0x10

.field public static final MAZEC_CMD_VIEW_TOUCHED:I = 0x32

.field public static final MAZEC_HEIGHT_HIGH:I = 0x6

.field public static final MAZEC_HEIGHT_LOW:I = 0x2

.field public static final MAZEC_HEIGHT_MIDDLE:I = 0x4

.field public static final MAZEC_JP_SPACE_FULL:I = 0x1

.field public static final MAZEC_JP_SPACE_HALF:I

.field private static _classRoomLearnedKanjiCharacters:Ljava/lang/String;

.field private static mSelf:Lcom/metamoji/mazec/MazecIms;


# instance fields
.field public density:F

.field private mAppendSpace:Z

.field private mBgColor:I

.field private mBgColorChangeEventShooter:Lcom/metamoji/mazec/MazecIms$EventShooter;

.field private mCanInputStroke:Z

.field private mClearEventShooter:Lcom/metamoji/mazec/MazecIms$EventShooter;

.field private mClientType:I

.field private mClientVer:I

.field private mCnvResult:Lcom/metamoji/mazec/converter/ConvertResult;

.field private mCommitStartCursor:I

.field private mComposingStyleBg:Landroid/text/style/CharacterStyle;

.field private mComposingStyleFg:Landroid/text/style/CharacterStyle;

.field private mComposingText:Landroid/text/SpannableStringBuilder;

.field private mComposingTextChangedLength:I

.field private mConvResultUpdatedEventShooter:Lcom/metamoji/mazec/MazecIms$EventShooter;

.field private mCurPenIndex:I

.field private mDeletedAutoSpace:Z

.field private mEditingPackageName:Ljava/lang/String;

.field protected mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field private mEnableAutoSpace:Z

.field private mFilterChangedEventShooter:Lcom/metamoji/mazec/MazecIms$EventShooter;

.field mHandler:Landroid/os/Handler;

.field private mHwRecogResultUpdateEventShooter:Lcom/metamoji/mazec/MazecIms$EventShooter;

.field private mHwRecognitionRequester:Ljava/lang/Runnable;

.field private mHwRecognitionRequesterPostTime:J

.field private mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

.field private mHwrResult:Lcom/metamoji/mazec/recognizer/HwRecognitionResult;

.field private mInReedit:Z

.field protected mInputView:Lcom/metamoji/mazec/ui/MazecView;

.field private mIsAvailable:Z

.field private mIsInputModeChangedFromApp:Z

.field private mIsLandscapeMode:Z

.field private mIsLatinLang:Z

.field private mIsLearning:Z

.field private mLang:Ljava/lang/String;

.field private mLangChangedEventShooter:Lcom/metamoji/mazec/MazecIms$EventShooter;

.field private mLangDicDir:Ljava/lang/String;

.field private mLastConvReq:Lcom/metamoji/mazec/util/MessageParam;

.field private mLastConvReqCtx:Lcom/metamoji/mazec/RACExecContext;

.field private mLastEditingPackageName:Ljava/lang/String;

.field private mLastEditingSrokesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStrokes;",
            ">;"
        }
    .end annotation
.end field

.field private mLastRecogReq:Lcom/metamoji/mazec/util/MessageParam;

.field private mLastRecogReqCtx:Lcom/metamoji/mazec/RACExecContext;

.field private mLineColorChangedEventShooter:Lcom/metamoji/mazec/MazecIms$EventShooter;

.field private mLineWidthTypeChangedEventShooter:Lcom/metamoji/mazec/MazecIms$EventShooter;

.field protected mMazecEventListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/mazec/MazecEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMushRequestPkg:Ljava/lang/String;

.field private mMushResult:Ljava/lang/String;

.field private mMushResultCommitter:Ljava/lang/Runnable;

.field private mMushResultCommitter2:Ljava/lang/Runnable;

.field protected mOnBackListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/mazec/MazecIms$OnBackListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPenStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/nt/share/NtPenStyle;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefs:Lcom/metamoji/mazec/MazecPreferences;

.field private mPrevCommitText:Ljava/lang/String;

.field private mRacContext:Lcom/metamoji/mazec/RACContext;

.field private mReRecognitionRequestTime:J

.field private mRecogSegmentation:Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;

.field private mRefStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

.field private mSettingsEnabled:Z

.field public mShowAdv7notes:Z

.field private mStroeUpdatedEventShooter:Lcom/metamoji/mazec/MazecIms$EventShooterWithParam;

.field private mStrokes2Text:Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;

.field private mTrialEndDate:Ljava/util/Calendar;

.field private mTrialStartDate:Ljava/util/Calendar;

.field private mUserCharFormRegisterEnabled:Z

.field public screenMinSize:I

.field public screenSizeType:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmBgColor(Lcom/metamoji/mazec/MazecIms;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/mazec/MazecIms;->mBgColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmClientVer(Lcom/metamoji/mazec/MazecIms;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/mazec/MazecIms;->mClientVer:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCnvResult(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/converter/ConvertResult;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/MazecIms;->mCnvResult:Lcom/metamoji/mazec/converter/ConvertResult;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHwRecognitionRequesterPostTime(Lcom/metamoji/mazec/MazecIms;)J
    .locals 2

    iget-wide v0, p0, Lcom/metamoji/mazec/MazecIms;->mHwRecognitionRequesterPostTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmHwStrokesModel(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/ui/HwStrokesModel;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHwrResult(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/recognizer/HwRecognitionResult;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/MazecIms;->mHwrResult:Lcom/metamoji/mazec/recognizer/HwRecognitionResult;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsLatinLang(Lcom/metamoji/mazec/MazecIms;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/mazec/MazecIms;->mIsLatinLang:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLang(Lcom/metamoji/mazec/MazecIms;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/MazecIms;->mLang:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMushRequestPkg(Lcom/metamoji/mazec/MazecIms;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/MazecIms;->mMushRequestPkg:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrefs(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/MazecPreferences;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRacContext(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/RACContext;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/MazecIms;->mRacContext:Lcom/metamoji/mazec/RACContext;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecogSegmentation(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/MazecIms;->mRecogSegmentation:Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLastRecogReq(Lcom/metamoji/mazec/MazecIms;Lcom/metamoji/mazec/util/MessageParam;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mLastRecogReq:Lcom/metamoji/mazec/util/MessageParam;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastRecogReqCtx(Lcom/metamoji/mazec/MazecIms;Lcom/metamoji/mazec/RACExecContext;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mLastRecogReqCtx:Lcom/metamoji/mazec/RACExecContext;

    return-void
.end method

.method static bridge synthetic -$$Nest$mclear(Lcom/metamoji/mazec/MazecIms;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/mazec/MazecIms;->clear()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfireStrokeUpdateEvent(Lcom/metamoji/mazec/MazecIms;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/MazecIms;->fireStrokeUpdateEvent(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetRecognitionParam(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/mazec/MazecIms;->getRecognitionParam()Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mperformPrivateCommand(Lcom/metamoji/mazec/MazecIms;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/MazecIms;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mrecognize(Lcom/metamoji/mazec/MazecIms;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/mazec/MazecIms;->recognize(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrerecognize(Lcom/metamoji/mazec/MazecIms;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/mazec/MazecIms;->rerecognize(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetRecognitionSegmentationPosition(Lcom/metamoji/mazec/MazecIms;FILcom/metamoji/mazec/stroke/HwStrokes;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/mazec/MazecIms;->setRecognitionSegmentationPosition(FILcom/metamoji/mazec/stroke/HwStrokes;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 546
    invoke-direct {p0}, Lcom/metamoji/inputmethodservice/InputMethodService;-><init>()V

    const/4 v0, 0x0

    .line 329
    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mInReedit:Z

    const/4 v1, 0x0

    .line 330
    iput-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mInputView:Lcom/metamoji/mazec/ui/MazecView;

    .line 331
    iput-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    .line 333
    iput-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 335
    const-string v2, ""

    iput-object v2, p0, Lcom/metamoji/mazec/MazecIms;->mEditingPackageName:Ljava/lang/String;

    .line 337
    iput-object v2, p0, Lcom/metamoji/mazec/MazecIms;->mLastEditingPackageName:Ljava/lang/String;

    .line 339
    iput-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mLastEditingSrokesList:Ljava/util/List;

    .line 341
    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mIsLandscapeMode:Z

    .line 344
    iput-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mMushResult:Ljava/lang/String;

    .line 345
    iput-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mMushRequestPkg:Ljava/lang/String;

    const/4 v3, -0x1

    .line 350
    iput v3, p0, Lcom/metamoji/mazec/MazecIms;->mCommitStartCursor:I

    .line 353
    iput-object v2, p0, Lcom/metamoji/mazec/MazecIms;->mPrevCommitText:Ljava/lang/String;

    .line 354
    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mDeletedAutoSpace:Z

    .line 357
    iput-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mComposingText:Landroid/text/SpannableStringBuilder;

    .line 358
    iput-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mComposingStyleBg:Landroid/text/style/CharacterStyle;

    .line 359
    iput-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mComposingStyleFg:Landroid/text/style/CharacterStyle;

    .line 360
    iput v0, p0, Lcom/metamoji/mazec/MazecIms;->mComposingTextChangedLength:I

    .line 362
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/metamoji/mazec/MazecIms;->mOnBackListeners:Ljava/util/ArrayList;

    .line 364
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/metamoji/mazec/MazecIms;->mMazecEventListeners:Ljava/util/ArrayList;

    .line 367
    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mAppendSpace:Z

    .line 368
    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mEnableAutoSpace:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 377
    iput v2, p0, Lcom/metamoji/mazec/MazecIms;->density:F

    const/4 v2, 0x2

    .line 378
    iput v2, p0, Lcom/metamoji/mazec/MazecIms;->screenSizeType:I

    const/16 v2, 0x140

    .line 379
    iput v2, p0, Lcom/metamoji/mazec/MazecIms;->screenMinSize:I

    .line 382
    iput-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mRacContext:Lcom/metamoji/mazec/RACContext;

    .line 384
    iput-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    .line 386
    iput-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mHwrResult:Lcom/metamoji/mazec/recognizer/HwRecognitionResult;

    .line 388
    iput-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mCnvResult:Lcom/metamoji/mazec/converter/ConvertResult;

    .line 390
    iput-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mRefStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    .line 392
    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mIsLearning:Z

    .line 394
    iput-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mLastConvReq:Lcom/metamoji/mazec/util/MessageParam;

    .line 396
    iput-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mLastConvReqCtx:Lcom/metamoji/mazec/RACExecContext;

    .line 398
    iput-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mLastRecogReq:Lcom/metamoji/mazec/util/MessageParam;

    .line 400
    iput-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mLastRecogReqCtx:Lcom/metamoji/mazec/RACExecContext;

    const-wide/16 v4, -0x1

    .line 402
    iput-wide v4, p0, Lcom/metamoji/mazec/MazecIms;->mReRecognitionRequestTime:J

    .line 405
    iput-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mStrokes2Text:Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;

    .line 408
    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mIsAvailable:Z

    .line 411
    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mIsInputModeChangedFromApp:Z

    .line 414
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->defaultPenStyles()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/mazec/MazecIms;->mPenStyles:Ljava/util/List;

    .line 416
    iput v0, p0, Lcom/metamoji/mazec/MazecIms;->mCurPenIndex:I

    .line 419
    iput v3, p0, Lcom/metamoji/mazec/MazecIms;->mBgColor:I

    .line 422
    iput-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mLangDicDir:Ljava/lang/String;

    .line 425
    iput-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mRecogSegmentation:Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;

    .line 429
    iput-wide v4, p0, Lcom/metamoji/mazec/MazecIms;->mHwRecognitionRequesterPostTime:J

    .line 430
    new-instance v0, Lcom/metamoji/mazec/MazecIms$1;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/MazecIms$1;-><init>(Lcom/metamoji/mazec/MazecIms;)V

    iput-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHwRecognitionRequester:Ljava/lang/Runnable;

    .line 470
    new-instance v0, Lcom/metamoji/mazec/MazecIms$2;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/MazecIms$2;-><init>(Lcom/metamoji/mazec/MazecIms;)V

    iput-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 2883
    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mShowAdv7notes:Z

    .line 3068
    new-instance v0, Lcom/metamoji/mazec/MazecIms$6;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/MazecIms$6;-><init>(Lcom/metamoji/mazec/MazecIms;)V

    iput-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mMushResultCommitter:Ljava/lang/Runnable;

    .line 3079
    new-instance v0, Lcom/metamoji/mazec/MazecIms$7;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/MazecIms$7;-><init>(Lcom/metamoji/mazec/MazecIms;)V

    iput-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mMushResultCommitter2:Ljava/lang/Runnable;

    .line 547
    sput-object p0, Lcom/metamoji/mazec/MazecIms;->mSelf:Lcom/metamoji/mazec/MazecIms;

    .line 550
    new-instance v0, Lcom/metamoji/mazec/MazecPreferences;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/MazecPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    return-void
.end method

.method private breakSequence()V
    .locals 2

    .line 3891
    iget-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mIsLearning:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x6b

    const/4 v1, 0x0

    .line 3892
    invoke-direct {p0, v0, v1}, Lcom/metamoji/mazec/MazecIms;->sendMessage(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 3893
    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mIsLearning:Z

    :cond_0
    return-void
.end method

.method private checkNextCharForSpaceComplement(Landroid/view/inputmethod/InputConnection;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2274
    invoke-interface {p1, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_0

    return v0

    .line 2279
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    return v0

    .line 2283
    :cond_1
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 2284
    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    .line 2288
    :cond_2
    invoke-static {p1}, Lcom/metamoji/mazec/util/StringChecker;->isPuncChar(C)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    .line 2292
    :cond_3
    iget-boolean p1, p0, Lcom/metamoji/mazec/MazecIms;->mInReedit:Z

    if-eqz p1, :cond_4

    return v0

    :cond_4
    return v1
.end method

.method private clear()V
    .locals 3

    .line 3819
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->cancelRecognition()V

    .line 3820
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->cancelConversion()V

    .line 3822
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->getInputMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 3823
    invoke-direct {p0, v1}, Lcom/metamoji/mazec/MazecIms;->setHwrResult(Lcom/metamoji/mazec/recognizer/HwRecognitionResult;)V

    .line 3824
    invoke-direct {p0, v1}, Lcom/metamoji/mazec/MazecIms;->setCnvResult(Lcom/metamoji/mazec/converter/ConvertResult;)V

    .line 3826
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/MazecIms;->setComposingText(Ljava/lang/String;)V

    .line 3829
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mClearEventShooter:Lcom/metamoji/mazec/MazecIms$EventShooter;

    if-nez v0, :cond_1

    .line 3830
    new-instance v0, Lcom/metamoji/mazec/MazecIms$12;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/MazecIms$12;-><init>(Lcom/metamoji/mazec/MazecIms;)V

    iput-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mClearEventShooter:Lcom/metamoji/mazec/MazecIms$EventShooter;

    .line 3837
    :cond_1
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mClearEventShooter:Lcom/metamoji/mazec/MazecIms$EventShooter;

    invoke-virtual {p0, p0, v0}, Lcom/metamoji/mazec/MazecIms;->fireEvent(Ljava/lang/Object;Lcom/metamoji/mazec/MazecIms$EventShooter;)V

    .line 3839
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->getInputMode()I

    move-result v0

    if-eq v0, v2, :cond_2

    const/16 v0, 0x37

    .line 3840
    invoke-direct {p0, v0, v1}, Lcom/metamoji/mazec/MazecIms;->sendMessage(ILjava/lang/Object;)V

    const/16 v0, 0x3e

    .line 3843
    invoke-direct {p0, v0, v1}, Lcom/metamoji/mazec/MazecIms;->sendMessage(ILjava/lang/Object;)V

    .line 3846
    :cond_2
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    .line 3847
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getLastStrokeRelatedActionTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/mazec/MazecIms;->mReRecognitionRequestTime:J

    return-void
.end method

.method private commitStrokes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStrokes;",
            ">;)V"
        }
    .end annotation

    .line 3476
    iget v0, p0, Lcom/metamoji/mazec/MazecIms;->mClientType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3483
    invoke-direct {p0, v0, p1}, Lcom/metamoji/mazec/MazecIms;->commitTextAndStrokes(Ljava/lang/String;Ljava/util/List;)V

    return-void

    .line 3479
    :cond_1
    const-string v0, "com.sevenknowledge.mazec.action.commit_strokes"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/mazec/MazecIms;->commitPrivateCommand(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private commitTextAndStrokes(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStrokes;",
            ">;)V"
        }
    .end annotation

    .line 3530
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_1

    .line 3533
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3535
    invoke-direct {p0, v1, p1}, Lcom/metamoji/mazec/MazecIms;->prevCommitText(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3537
    :cond_0
    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 3540
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 3541
    new-instance v1, Lcom/metamoji/mazecapi/StrokesAndStyles;

    iget v2, p0, Lcom/metamoji/mazec/MazecIms;->mClientVer:I

    invoke-static {p2}, Lcom/metamoji/mazec/stroke/StrokeUtil;->convertStrokesListToNA(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Lcom/metamoji/mazecapi/StrokesAndStyles;-><init>(ILjava/util/List;)V

    .line 3542
    const-string/jumbo p2, "stroke_data"

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3545
    :cond_2
    const-string p2, "com.metamoji.mazecapi.client_action.commit"

    invoke-direct {p0, p2, v0}, Lcom/metamoji/mazec/MazecIms;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    if-eqz p1, :cond_3

    .line 3548
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/MazecIms;->postCommitText(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private complementSpaceFoInput(Ljava/lang/String;Landroid/view/inputmethod/InputConnection;)Ljava/lang/String;
    .locals 3

    .line 2210
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-static {v0}, Lcom/metamoji/mazec/MazecIms;->isInputPassword(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2214
    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mDeletedAutoSpace:Z

    .line 2215
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2216
    iget-object v2, p0, Lcom/metamoji/mazec/MazecIms;->mComposingText:Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 2217
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mComposingText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2218
    invoke-static {p1}, Lcom/metamoji/mazec/util/StringChecker;->headWordString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2219
    invoke-direct {p0, p2}, Lcom/metamoji/mazec/MazecIms;->deleteAutoInsertedSpace(Landroid/view/inputmethod/InputConnection;)V

    .line 2221
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2223
    :cond_2
    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mAppendSpace:Z

    return-object p1

    .line 2225
    :cond_3
    invoke-static {p1}, Lcom/metamoji/mazec/util/StringChecker;->headWordString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2226
    invoke-direct {p0, p2}, Lcom/metamoji/mazec/MazecIms;->deleteAutoInsertedSpace(Landroid/view/inputmethod/InputConnection;)V

    .line 2229
    :cond_4
    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mAppendSpace:Z

    .line 2230
    invoke-static {p1}, Lcom/metamoji/mazec/util/StringChecker;->tailWordString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2231
    invoke-direct {p0, p2}, Lcom/metamoji/mazec/MazecIms;->checkNextCharForSpaceComplement(Landroid/view/inputmethod/InputConnection;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 2232
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 2233
    iput-boolean p2, p0, Lcom/metamoji/mazec/MazecIms;->mAppendSpace:Z

    :cond_5
    :goto_0
    return-object p1
.end method

.method private createConversionParam(Ljava/lang/String;Lcom/metamoji/mazec/recognizer/HwRecognitionResult;)[Ljava/lang/Object;
    .locals 1

    .line 466
    new-instance v0, Lcom/metamoji/mazec/RACExecContext;

    invoke-direct {v0}, Lcom/metamoji/mazec/RACExecContext;-><init>()V

    filled-new-array {p1, p2, v0}, [Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method static defaultPenStyles()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/nt/share/NtPenStyle;",
            ">;"
        }
    .end annotation

    .line 495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 498
    new-instance v1, Lcom/metamoji/nt/share/NtPenStyle;

    invoke-direct {v1}, Lcom/metamoji/nt/share/NtPenStyle;-><init>()V

    .line 499
    const-string/jumbo v2, "standard"

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/share/NtPenStyle;->setType(Ljava/lang/String;)V

    const/16 v2, 0xff

    const/4 v3, 0x0

    .line 500
    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/metamoji/nt/share/NtPenStyle;->setLineColor(I)V

    const/high16 v4, 0x40a00000    # 5.0f

    .line 501
    invoke-virtual {v1, v4}, Lcom/metamoji/nt/share/NtPenStyle;->setLineWidth(F)V

    const/4 v5, 0x0

    .line 502
    invoke-virtual {v1, v5}, Lcom/metamoji/nt/share/NtPenStyle;->setPenAngle(F)V

    .line 503
    invoke-virtual {v1, v5}, Lcom/metamoji/nt/share/NtPenStyle;->setPenRate(F)V

    .line 504
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    new-instance v1, Lcom/metamoji/nt/share/NtPenStyle;

    invoke-direct {v1}, Lcom/metamoji/nt/share/NtPenStyle;-><init>()V

    .line 507
    const-string v5, "calligraphy"

    invoke-virtual {v1, v5}, Lcom/metamoji/nt/share/NtPenStyle;->setType(Ljava/lang/String;)V

    .line 508
    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/metamoji/nt/share/NtPenStyle;->setLineColor(I)V

    const/high16 v6, 0x3fc00000    # 1.5f

    .line 509
    invoke-virtual {v1, v6}, Lcom/metamoji/nt/share/NtPenStyle;->setLineWidth(F)V

    const/high16 v6, 0x42340000    # 45.0f

    .line 510
    invoke-virtual {v1, v6}, Lcom/metamoji/nt/share/NtPenStyle;->setPenAngle(F)V

    const/high16 v7, 0x40000000    # 2.0f

    .line 511
    invoke-virtual {v1, v7}, Lcom/metamoji/nt/share/NtPenStyle;->setPenRate(F)V

    .line 512
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    new-instance v1, Lcom/metamoji/nt/share/NtPenStyle;

    invoke-direct {v1}, Lcom/metamoji/nt/share/NtPenStyle;-><init>()V

    .line 515
    invoke-virtual {v1, v5}, Lcom/metamoji/nt/share/NtPenStyle;->setType(Ljava/lang/String;)V

    .line 516
    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/metamoji/nt/share/NtPenStyle;->setLineColor(I)V

    .line 517
    invoke-virtual {v1, v4}, Lcom/metamoji/nt/share/NtPenStyle;->setLineWidth(F)V

    .line 518
    invoke-virtual {v1, v6}, Lcom/metamoji/nt/share/NtPenStyle;->setPenAngle(F)V

    .line 519
    invoke-virtual {v1, v7}, Lcom/metamoji/nt/share/NtPenStyle;->setPenRate(F)V

    .line 520
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    new-instance v1, Lcom/metamoji/nt/share/NtPenStyle;

    invoke-direct {v1}, Lcom/metamoji/nt/share/NtPenStyle;-><init>()V

    .line 523
    invoke-virtual {v1, v5}, Lcom/metamoji/nt/share/NtPenStyle;->setType(Ljava/lang/String;)V

    .line 524
    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/metamoji/nt/share/NtPenStyle;->setLineColor(I)V

    .line 525
    invoke-virtual {v1, v4}, Lcom/metamoji/nt/share/NtPenStyle;->setLineWidth(F)V

    const/high16 v3, 0x432f0000    # 175.0f

    .line 526
    invoke-virtual {v1, v3}, Lcom/metamoji/nt/share/NtPenStyle;->setPenAngle(F)V

    .line 527
    invoke-virtual {v1, v7}, Lcom/metamoji/nt/share/NtPenStyle;->setPenRate(F)V

    .line 528
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    new-instance v1, Lcom/metamoji/nt/share/NtPenStyle;

    invoke-direct {v1}, Lcom/metamoji/nt/share/NtPenStyle;-><init>()V

    .line 531
    invoke-virtual {v1, v5}, Lcom/metamoji/nt/share/NtPenStyle;->setType(Ljava/lang/String;)V

    const/16 v3, 0xee

    const/16 v4, 0x33

    .line 532
    invoke-static {v2, v3, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/share/NtPenStyle;->setLineColor(I)V

    const/high16 v2, 0x3f000000    # 0.5f

    .line 533
    invoke-virtual {v1, v2}, Lcom/metamoji/nt/share/NtPenStyle;->setLineAlpha(F)V

    const/high16 v2, 0x41200000    # 10.0f

    .line 534
    invoke-virtual {v1, v2}, Lcom/metamoji/nt/share/NtPenStyle;->setLineWidth(F)V

    .line 535
    invoke-virtual {v1, v6}, Lcom/metamoji/nt/share/NtPenStyle;->setPenAngle(F)V

    .line 536
    invoke-virtual {v1, v7}, Lcom/metamoji/nt/share/NtPenStyle;->setPenRate(F)V

    .line 537
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private deleteAutoInsertedSpace(Landroid/view/inputmethod/InputConnection;)V
    .locals 4

    .line 2244
    iget-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mAppendSpace:Z

    if-eqz v0, :cond_1

    .line 2245
    iget v0, p0, Lcom/metamoji/mazec/MazecIms;->mCommitStartCursor:I

    if-ltz v0, :cond_1

    .line 2246
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mComposingText:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 2247
    :cond_0
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    .line 2248
    invoke-interface {p1, v0, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2250
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mPrevCommitText:Ljava/lang/String;

    const-string v3, " "

    .line 2251
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2252
    invoke-interface {p1, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2253
    iget p1, p0, Lcom/metamoji/mazec/MazecIms;->mCommitStartCursor:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/metamoji/mazec/MazecIms;->mCommitStartCursor:I

    .line 2254
    iput-boolean v1, p0, Lcom/metamoji/mazec/MazecIms;->mDeletedAutoSpace:Z

    :cond_1
    return-void
.end method

.method private fireHwRecognitionResultUpdateEvnet()V
    .locals 1

    .line 3952
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHwRecogResultUpdateEventShooter:Lcom/metamoji/mazec/MazecIms$EventShooter;

    if-nez v0, :cond_0

    .line 3953
    new-instance v0, Lcom/metamoji/mazec/MazecIms$13;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/MazecIms$13;-><init>(Lcom/metamoji/mazec/MazecIms;)V

    iput-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHwRecogResultUpdateEventShooter:Lcom/metamoji/mazec/MazecIms$EventShooter;

    .line 3960
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHwRecogResultUpdateEventShooter:Lcom/metamoji/mazec/MazecIms$EventShooter;

    invoke-virtual {p0, p0, v0}, Lcom/metamoji/mazec/MazecIms;->fireEvent(Ljava/lang/Object;Lcom/metamoji/mazec/MazecIms$EventShooter;)V

    return-void
.end method

.method private fireStrokeUpdateEvent(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStroke;",
            ">;",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStroke;",
            ">;)V"
        }
    .end annotation

    .line 3966
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mStroeUpdatedEventShooter:Lcom/metamoji/mazec/MazecIms$EventShooterWithParam;

    if-nez v0, :cond_0

    .line 3967
    new-instance v0, Lcom/metamoji/mazec/MazecIms$14;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/MazecIms$14;-><init>(Lcom/metamoji/mazec/MazecIms;)V

    iput-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mStroeUpdatedEventShooter:Lcom/metamoji/mazec/MazecIms$EventShooterWithParam;

    .line 3982
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mStroeUpdatedEventShooter:Lcom/metamoji/mazec/MazecIms$EventShooterWithParam;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/metamoji/mazec/MazecIms$EventShooterWithParam;->setEventParams([Ljava/lang/Object;)V

    .line 3983
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mStroeUpdatedEventShooter:Lcom/metamoji/mazec/MazecIms$EventShooterWithParam;

    invoke-virtual {p0, p0, p1}, Lcom/metamoji/mazec/MazecIms;->fireEvent(Ljava/lang/Object;Lcom/metamoji/mazec/MazecIms$EventShooter;)V

    return-void
.end method

.method public static getClassRoomLearnedKanjiCharacters()Ljava/lang/String;
    .locals 1

    .line 4348
    sget-object v0, Lcom/metamoji/mazec/MazecIms;->_classRoomLearnedKanjiCharacters:Ljava/lang/String;

    return-object v0
.end method

.method private getFilterFromApp(I)I
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 p1, -0x1

    :cond_0
    return p1
.end method

.method public static getInstance()Lcom/metamoji/mazec/MazecIms;
    .locals 1

    .line 557
    sget-object v0, Lcom/metamoji/mazec/MazecIms;->mSelf:Lcom/metamoji/mazec/MazecIms;

    return-object v0
.end method

.method private getRecognitionParam()Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;
    .locals 9

    .line 446
    new-instance v7, Lcom/metamoji/mazec/RACExecContext;

    invoke-direct {v7}, Lcom/metamoji/mazec/RACExecContext;-><init>()V

    .line 449
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mRecogSegmentation:Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {v0}, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->getSplitPosition()Ljava/util/List;

    move-result-object v0

    .line 451
    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mRecogSegmentation:Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;

    invoke-virtual {v1}, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->getJoinPosition()Ljava/util/List;

    move-result-object v1

    move-object v5, v0

    move-object v6, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v5, v0

    move-object v6, v5

    .line 453
    :goto_0
    new-instance v0, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;

    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    .line 454
    invoke-virtual {v1}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getHwStrokes()Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    iget-object v3, p0, Lcom/metamoji/mazec/MazecIms;->mLang:Ljava/lang/String;

    .line 455
    invoke-virtual {v2, v3}, Lcom/metamoji/mazec/MazecPreferences;->getFilter(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    .line 456
    invoke-virtual {v3}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getGuidelines()[F

    move-result-object v3

    iget-object v4, p0, Lcom/metamoji/mazec/MazecIms;->mLang:Ljava/lang/String;

    iget-object v8, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    .line 457
    invoke-static {v4, v8}, Lcom/metamoji/mazec/util/LocaleUtil;->wordSpaceCoefficientForLanguage(Ljava/lang/String;Lcom/metamoji/mazec/MazecPreferences;)F

    move-result v4

    invoke-direct/range {v0 .. v7}, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;-><init>(Lcom/metamoji/mazec/stroke/HwStrokes;I[FFLjava/util/List;Ljava/util/List;Lcom/metamoji/mazec/RACExecContext;)V

    return-object v0
.end method

.method private hasIncompatibleStroke(IZ)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 p2, 0x2

    const/4 v1, 0x1

    if-ne p1, p2, :cond_1

    .line 4156
    invoke-direct {p0, v1}, Lcom/metamoji/mazec/MazecIms;->hasStrokeOfPenType(I)Z

    move-result p1

    return p1

    :cond_1
    if-ne p1, v1, :cond_4

    const/4 p1, 0x3

    .line 4158
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/MazecIms;->hasStrokeOfPenType(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 4159
    invoke-direct {p0, p2}, Lcom/metamoji/mazec/MazecIms;->hasStrokeOfPenType(I)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x4

    .line 4160
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/MazecIms;->hasStrokeOfPenType(I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1

    :cond_4
    return v0
.end method

.method private hasStrokeOfPenType(I)Z
    .locals 5

    .line 4167
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getHwStrokes()Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v0

    .line 4168
    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->strokeCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 4169
    invoke-virtual {v0, v3}, Lcom/metamoji/mazec/stroke/HwStrokes;->getStroke(I)Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object v4

    .line 4170
    invoke-virtual {v4}, Lcom/metamoji/mazec/stroke/HwStroke;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v4

    .line 4171
    invoke-virtual {v4}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getPenType()I

    move-result v4

    if-ne v4, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private initTrialPeriod()V
    .locals 0

    return-void
.end method

.method public static isInputAlphaNum(Landroid/view/inputmethod/EditorInfo;)Z
    .locals 3

    .line 914
    sget-object v0, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    if-eqz p0, :cond_4

    .line 919
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p0, 0x2

    if-eq v0, p0, :cond_1

    const/4 p0, 0x3

    if-eq v0, p0, :cond_1

    const/4 p0, 0x4

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    .line 926
    :cond_2
    iget p0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 p0, p0, 0xff0

    const/16 v0, 0x10

    if-eq p0, v0, :cond_3

    const/16 v0, 0x20

    if-eq p0, v0, :cond_3

    const/16 v0, 0x80

    if-eq p0, v0, :cond_3

    const/16 v0, 0x90

    if-eq p0, v0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v2
.end method

.method public static isInputDateTime(Landroid/view/inputmethod/EditorInfo;)Z
    .locals 3

    .line 946
    sget-object v0, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 958
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 959
    iget-object p0, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string v0, "inputType=YearDateTime_edittext"

    .line 960
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method

.method public static isInputMonth(Landroid/view/inputmethod/EditorInfo;)Z
    .locals 3

    .line 971
    sget-object v0, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 984
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 985
    iget-object p0, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string v0, "inputType=month_edittext"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 986
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    .line 987
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 986
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method

.method public static isInputPassword(Landroid/view/inputmethod/EditorInfo;)Z
    .locals 2

    if-eqz p0, :cond_2

    .line 888
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 897
    :cond_0
    iget p0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 p0, p0, 0xff0

    const/16 v0, 0x80

    if-eq p0, v0, :cond_1

    const/16 v0, 0x90

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private onAppPrivateActionSetFilter(Ljava/lang/Integer;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2800
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/metamoji/mazec/MazecIms;->getFilterFromApp(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2801
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    .line 2802
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/MazecIms;->setRecognizeFilter(I)V

    :cond_0
    return-void
.end method

.method private onAppPrivateActionSetInputMode(Ljava/lang/Integer;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 2780
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 2782
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mCanInputStroke:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 2793
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/MazecIms;->setInputMode(I)V

    .line 2794
    iput-boolean v1, p0, Lcom/metamoji/mazec/MazecIms;->mIsInputModeChangedFromApp:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private onAppPrivateActionSetProperties(Landroid/os/Bundle;)V
    .locals 7

    if-eqz p1, :cond_c

    .line 2679
    const-string v0, "input_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2682
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/MazecIms;->string2inputMode(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/mazec/MazecIms;->onAppPrivateActionSetInputMode(Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2689
    :catch_0
    :cond_0
    const-string v0, "filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2692
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/MazecIms;->string2filter(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/mazec/MazecIms;->onAppPrivateActionSetFilter(Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2700
    :catch_1
    :cond_1
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    .line 2702
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecPreferences;->isAutoCommitEnabled()Z

    move-result v0

    .line 2700
    const-string v1, "auto_commit_stroke"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2703
    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    .line 2705
    invoke-virtual {v1}, Lcom/metamoji/mazec/MazecPreferences;->getAutoCommitDelay()I

    move-result v1

    .line 2703
    const-string v2, "auto_commit_stroke_delay"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_2

    move v1, v2

    .line 2709
    :cond_2
    iget-object v3, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    invoke-virtual {v3}, Lcom/metamoji/mazec/MazecPreferences;->isAutoCommitEnabled()Z

    move-result v3

    if-ne v3, v0, :cond_3

    iget-object v3, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    .line 2710
    invoke-virtual {v3}, Lcom/metamoji/mazec/MazecPreferences;->getAutoCommitDelay()I

    move-result v3

    if-eq v3, v1, :cond_4

    .line 2711
    :cond_3
    iget-object v3, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    invoke-virtual {v3, v0, v2}, Lcom/metamoji/mazec/MazecPreferences;->setAutoCommitEnabled(ZZ)V

    .line 2712
    iget-object v3, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    invoke-virtual {v3, v1, v2}, Lcom/metamoji/mazec/MazecPreferences;->setAutoCommitDelay(IZ)V

    .line 2713
    iget-object v3, p0, Lcom/metamoji/mazec/MazecIms;->mInputView:Lcom/metamoji/mazec/ui/MazecView;

    if-eqz v3, :cond_4

    .line 2714
    invoke-virtual {v3, v0, v1}, Lcom/metamoji/mazec/ui/MazecView;->onUpdateAutoCommitSetting(ZI)V

    .line 2720
    :cond_4
    const-string v0, "pen_set"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_8

    .line 2722
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2723
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 2724
    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mPenStyles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v1, v4, :cond_5

    :goto_0
    move v1, v3

    goto :goto_2

    .line 2727
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_7

    .line 2728
    iget-object v5, p0, Lcom/metamoji/mazec/MazecIms;->mPenStyles:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/metamoji/nt/share/NtPenStyle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_0

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    move v1, v2

    .line 2734
    :goto_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mPenStyles:Ljava/util/List;

    goto :goto_3

    :cond_8
    move v1, v2

    .line 2738
    :goto_3
    const-string v0, "cur_pen_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2739
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2740
    iget v4, p0, Lcom/metamoji/mazec/MazecIms;->mCurPenIndex:I

    if-eq v4, v0, :cond_9

    .line 2741
    iput v0, p0, Lcom/metamoji/mazec/MazecIms;->mCurPenIndex:I

    move v1, v3

    .line 2744
    :cond_9
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mPenStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v4, p0, Lcom/metamoji/mazec/MazecIms;->mCurPenIndex:I

    if-gt v0, v4, :cond_a

    .line 2745
    iput v2, p0, Lcom/metamoji/mazec/MazecIms;->mCurPenIndex:I

    goto :goto_4

    :cond_a
    move v3, v1

    :goto_4
    if-eqz v3, :cond_b

    .line 2749
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mInputView:Lcom/metamoji/mazec/ui/MazecView;

    if-eqz v0, :cond_b

    .line 2750
    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mPenStyles:Ljava/util/List;

    iget v2, p0, Lcom/metamoji/mazec/MazecIms;->mCurPenIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/mazec/ui/MazecView;->onPenStyleChanged(Ljava/util/List;I)V

    .line 2754
    :cond_b
    const-string v0, "back_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2756
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 2755
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/MazecIms;->setBackgroundColor(I)V

    :cond_c
    return-void
.end method

.method private onAppPrivateActionSetStrokes(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStrokes;",
            ">;)I"
        }
    .end annotation

    .line 2808
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/ui/HwStrokesModel;->setStrokes(Ljava/util/List;)I

    move-result p1

    const/4 v0, 0x0

    .line 2812
    invoke-direct {p0, v0}, Lcom/metamoji/mazec/MazecIms;->setHwrResult(Lcom/metamoji/mazec/recognizer/HwRecognitionResult;)V

    .line 2813
    invoke-direct {p0, v0}, Lcom/metamoji/mazec/MazecIms;->setCnvResult(Lcom/metamoji/mazec/converter/ConvertResult;)V

    return p1
.end method

.method private onAppPrivateCommand7N(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .line 2522
    const-string v0, "com.sevenknowledge.mazec.action.is_reedit_supported"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2523
    const-string p1, "com.sevenknowledge.mazec.action.reedit_supported"

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/mazec/MazecIms;->commitPrivateCommand(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 2527
    :cond_0
    const-string v0, "com.sevenknowledge.mazec.action.set_input_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "data"

    if-eqz v0, :cond_1

    if-eqz p2, :cond_7

    .line 2529
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/metamoji/mazec/MazecIms;->onAppPrivateActionSetInputMode(Ljava/lang/Integer;)V

    return-void

    .line 2544
    :cond_1
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mInputView:Lcom/metamoji/mazec/ui/MazecView;

    if-nez v0, :cond_2

    goto :goto_1

    .line 2549
    :cond_2
    const-string v0, "com.sevenknowledge.mazec.action.start_reedit"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    .line 2550
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/MazecIms;->setReeditMode(Z)V

    return-void

    .line 2554
    :cond_3
    const-string v0, "com.sevenknowledge.mazec.action.end_reedit"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 2555
    invoke-direct {p0, v2}, Lcom/metamoji/mazec/MazecIms;->setReeditMode(Z)V

    return-void

    .line 2559
    :cond_4
    const-string v0, "com.sevenknowledge.mazec.action.set_strokes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    if-eqz p2, :cond_5

    .line 2564
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 2566
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 2567
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge v2, p2, :cond_5

    .line 2570
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;

    .line 2569
    invoke-static {v0}, Lcom/metamoji/mazec/stroke/StrokeUtil;->convertStrokesFrom7notes(Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;)Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2575
    :cond_5
    invoke-direct {p0, v3}, Lcom/metamoji/mazec/MazecIms;->onAppPrivateActionSetStrokes(Ljava/util/List;)I

    move-result p1

    if-eqz v3, :cond_7

    .line 2578
    const-string p2, "com.sevenknowledge.mazec.action.result_of_set_strokes"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/metamoji/mazec/MazecIms;->commitPrivateCommand(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 2583
    :cond_6
    const-string v0, "com.sevenknowledge.mazec.action.cursor_changed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "com.sevenknowledge.mazec.action.text_changed"

    .line 2584
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    :goto_1
    return-void

    :cond_8
    :goto_2
    if-eqz p2, :cond_9

    .line 2588
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;

    if-eqz p1, :cond_9

    .line 2590
    invoke-static {p1}, Lcom/metamoji/mazec/stroke/StrokeUtil;->convertStrokesFrom7notes(Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;)Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v3

    .line 2594
    :cond_9
    invoke-direct {p0, v3}, Lcom/metamoji/mazec/MazecIms;->onAppPrivateNotifyCursorChanged(Lcom/metamoji/mazec/stroke/HwStrokes;)V

    return-void
.end method

.method private onAppPrivateCommandNA(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 2600
    const-string v0, "com.metamoji.mazecapi.action.set_properties"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2601
    invoke-direct {p0, p2}, Lcom/metamoji/mazec/MazecIms;->onAppPrivateActionSetProperties(Landroid/os/Bundle;)V

    return-void

    .line 2606
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mInputView:Lcom/metamoji/mazec/ui/MazecView;

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 2610
    :cond_1
    const-string v0, "com.metamoji.mazecapi.action.reediting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_8

    .line 2612
    const-string p1, "reediting"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/metamoji/mazec/MazecIms;->setReeditMode(Z)V

    return-void

    .line 2617
    :cond_2
    const-string v0, "com.metamoji.mazecapi.action.set_strokes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string/jumbo v2, "stroke_data"

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    .line 2621
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/metamoji/mazecapi/StrokesAndStyles;

    .line 2622
    invoke-virtual {p1}, Lcom/metamoji/mazecapi/StrokesAndStyles;->getStrokesList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/mazec/stroke/StrokeUtil;->convertStrokesListFromNA(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2623
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/MazecIms;->onAppPrivateActionSetStrokes(Ljava/util/List;)I

    move-result v1

    goto :goto_0

    .line 2625
    :cond_3
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/HwStrokesModel;->clear()V

    .line 2628
    :goto_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 2629
    const-string p2, "count"

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2630
    const-string p2, "com.metamoji.mazecapi.action_reply.set_strokes"

    invoke-direct {p0, p2, p1}, Lcom/metamoji/mazec/MazecIms;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    return-void

    .line 2634
    :cond_4
    const-string v0, "com.metamoji.mazecapi.notify.cursor_changed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "com.metamoji.mazecapi.notify.text_changed"

    .line 2635
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 2651
    :cond_5
    iget v0, p0, Lcom/metamoji/mazec/MazecIms;->mClientVer:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_6

    goto :goto_1

    .line 2655
    :cond_6
    const-string v0, "com.metamoji.mazecapi.action.convert_strokes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    .line 2657
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/metamoji/mazecapi/StrokesAndStyles;

    .line 2658
    invoke-virtual {p1}, Lcom/metamoji/mazecapi/StrokesAndStyles;->getStrokesList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/mazec/stroke/StrokeUtil;->convertStrokesListFromNA(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2659
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_8

    .line 2660
    iget-object p2, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {p2}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getHwStrokes()Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/mazec/stroke/HwStrokes;->clone()Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object p2

    .line 2661
    invoke-virtual {p2}, Lcom/metamoji/mazec/stroke/HwStrokes;->removeAllStrokes()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 2662
    invoke-virtual {p2, p1, v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->mergeStrokesArray(Ljava/util/List;F)I

    .line 2664
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mStrokes2Text:Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;

    if-nez p1, :cond_7

    .line 2665
    new-instance p1, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;

    invoke-direct {p1, p0}, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;-><init>(Lcom/metamoji/mazec/MazecIms;)V

    iput-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mStrokes2Text:Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;

    .line 2669
    :cond_7
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mStrokes2Text:Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;

    invoke-virtual {p1, p2}, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->addStrokes(Lcom/metamoji/mazec/stroke/HwStrokes;)V

    :cond_8
    :goto_1
    return-void

    :cond_9
    :goto_2
    if-eqz p2, :cond_a

    .line 2639
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/metamoji/mazecapi/StrokesAndStyles;

    .line 2642
    invoke-virtual {p1}, Lcom/metamoji/mazecapi/StrokesAndStyles;->getStrokesList()Ljava/util/List;

    move-result-object p1

    .line 2641
    invoke-static {p1}, Lcom/metamoji/mazec/stroke/StrokeUtil;->convertStrokesListFromNA(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 2643
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_a

    .line 2644
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/mazec/stroke/HwStrokes;

    goto :goto_3

    :cond_a
    const/4 p1, 0x0

    .line 2647
    :goto_3
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/MazecIms;->onAppPrivateNotifyCursorChanged(Lcom/metamoji/mazec/stroke/HwStrokes;)V

    return-void
.end method

.method private onAppPrivateCommandUN(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method private onAppPrivateNotifyCursorChanged(Lcom/metamoji/mazec/stroke/HwStrokes;)V
    .locals 2

    .line 2819
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mRefStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 2820
    :cond_0
    iput-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mRefStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    const/16 v0, 0x18

    const/4 v1, 0x0

    .line 2821
    invoke-virtual {p0, v0, p1, v1}, Lcom/metamoji/mazec/MazecIms;->fireMazecEvent(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2825
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->contextChanged()V

    const/4 p1, -0x1

    .line 2827
    iput p1, p0, Lcom/metamoji/mazec/MazecIms;->mCommitStartCursor:I

    .line 2828
    const-string p1, ""

    iput-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mPrevCommitText:Ljava/lang/String;

    const/4 p1, 0x0

    .line 2829
    iput-boolean p1, p0, Lcom/metamoji/mazec/MazecIms;->mDeletedAutoSpace:Z

    .line 2830
    iput-boolean p1, p0, Lcom/metamoji/mazec/MazecIms;->mAppendSpace:Z

    return-void
.end method

.method private onInputModeChanged(IZ)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    goto :goto_0

    .line 3657
    :cond_0
    iget-boolean v3, p0, Lcom/metamoji/mazec/MazecIms;->mIsLatinLang:Z

    if-eqz v3, :cond_2

    .line 3658
    invoke-virtual {p0, v2}, Lcom/metamoji/mazec/MazecIms;->setEnableAutoSpace(Z)V

    goto :goto_0

    .line 3665
    :cond_1
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/MazecIms;->setEnableAutoSpace(Z)V

    .line 3666
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->hasComposingText()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3667
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/metamoji/mazec/MazecIms;->setComposingText(Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 3674
    iget-object p2, p0, Lcom/metamoji/mazec/MazecIms;->mInputView:Lcom/metamoji/mazec/ui/MazecView;

    invoke-virtual {p2, p0}, Lcom/metamoji/mazec/ui/MazecView;->onUIModeChanged(Lcom/metamoji/mazec/MazecIms;)V

    .line 3677
    :cond_3
    sget-object p2, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v3, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    if-ne p2, v3, :cond_4

    .line 3678
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/MazecIms;->setCandidatesViewShown(Z)V

    .line 3681
    :cond_4
    iget p2, p0, Lcom/metamoji/mazec/MazecIms;->mClientType:I

    if-eq p2, v2, :cond_6

    if-eq p2, v1, :cond_5

    return-void

    .line 3687
    :cond_5
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 3688
    const-string v0, "input_mode"

    .line 3689
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/MazecIms;->inputMode2string(I)Ljava/lang/String;

    move-result-object p1

    .line 3688
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3690
    const-string p1, "com.metamoji.mazecapi.client_notify.properties_changed"

    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/MazecIms;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    return-void

    .line 3683
    :cond_6
    const-string p2, "com.sevenknowledge.mazec.action.input_mode_changed"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/metamoji/mazec/MazecIms;->commitPrivateCommand(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private onReeditModeChanged()V
    .locals 1

    .line 1050
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mInputView:Lcom/metamoji/mazec/ui/MazecView;

    invoke-virtual {v0, p0}, Lcom/metamoji/mazec/ui/MazecView;->onUIModeChanged(Lcom/metamoji/mazec/MazecIms;)V

    return-void
.end method

.method private parseEditorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 7

    .line 1342
    invoke-static {p1}, Lcom/metamoji/mazec/MazecIms;->isInputAlphaNum(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1343
    invoke-static {p1}, Lcom/metamoji/mazec/MazecIms;->isInputDateTime(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1344
    invoke-static {p1}, Lcom/metamoji/mazec/MazecIms;->isInputMonth(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1346
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/mazec/MazecPreferences;->setInputMode(IZ)V

    .line 1350
    :cond_1
    iput v1, p0, Lcom/metamoji/mazec/MazecIms;->mClientType:I

    .line 1351
    iput-boolean v1, p0, Lcom/metamoji/mazec/MazecIms;->mCanInputStroke:Z

    const/4 v0, 0x1

    .line 1352
    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mUserCharFormRegisterEnabled:Z

    .line 1353
    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mSettingsEnabled:Z

    .line 1354
    iput-boolean v1, p0, Lcom/metamoji/mazec/MazecIms;->mIsInputModeChangedFromApp:Z

    const/4 v2, -0x1

    .line 1356
    invoke-direct {p0, v2}, Lcom/metamoji/mazec/MazecIms;->setBackgroundColor(I)V

    .line 1358
    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 1360
    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string v3, "com.metamoji.mazec-api"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/16 v4, 0x3f

    const/4 v5, 0x2

    if-eqz v2, :cond_3

    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 1361
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v2, v6, :cond_2

    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 1362
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_3

    .line 1364
    :cond_2
    iput v5, p0, Lcom/metamoji/mazec/MazecIms;->mClientType:I

    move v1, v0

    goto :goto_0

    .line 1366
    :cond_3
    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string v3, "com.metamoji.mazecapi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 1367
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v2, v6, :cond_4

    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 1368
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_5

    .line 1370
    :cond_4
    iput v5, p0, Lcom/metamoji/mazec/MazecIms;->mClientType:I

    goto :goto_0

    .line 1371
    :cond_5
    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string v3, "com.sevenknowledge.mazec=0.8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 1372
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v2, v4, :cond_6

    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 1373
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x26

    if-ne v2, v3, :cond_7

    .line 1375
    :cond_6
    iput v0, p0, Lcom/metamoji/mazec/MazecIms;->mClientType:I

    .line 1378
    :cond_7
    :goto_0
    iget v0, p0, Lcom/metamoji/mazec/MazecIms;->mClientType:I

    if-ne v0, v5, :cond_8

    .line 1379
    iget-object p1, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/metamoji/mazec/MazecIms;->parseImeOptionsNA(Ljava/lang/String;Z)V

    return-void

    .line 1381
    :cond_8
    iget-object p1, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/metamoji/mazec/MazecIms;->parseImeOptions(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private parseImeOptions(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    .line 1584
    iput v0, p0, Lcom/metamoji/mazec/MazecIms;->mClientVer:I

    .line 1585
    iget v1, p0, Lcom/metamoji/mazec/MazecIms;->mClientType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    iput-boolean v3, p0, Lcom/metamoji/mazec/MazecIms;->mCanInputStroke:Z

    if-eqz p1, :cond_9

    if-ne v1, v2, :cond_9

    .line 1588
    const-string v1, "&"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1589
    array-length v1, p1

    move v3, v0

    :goto_1
    if-ge v3, v1, :cond_9

    aget-object v4, p1, v3

    .line 1590
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1591
    array-length v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    goto/16 :goto_2

    .line 1594
    :cond_1
    const-string v5, "input_mode"

    aget-object v7, v4, v0

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1597
    :try_start_0
    aget-object v4, v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v2, :cond_2

    if-eq v4, v6, :cond_3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    goto :goto_2

    .line 1600
    :cond_2
    iget-boolean v5, p0, Lcom/metamoji/mazec/MazecIms;->mCanInputStroke:Z

    if-nez v5, :cond_3

    goto :goto_2

    .line 1606
    :cond_3
    iget-object v5, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    invoke-virtual {v5, v4, v0}, Lcom/metamoji/mazec/MazecPreferences;->setInputMode(IZ)V

    .line 1607
    iput-boolean v2, p0, Lcom/metamoji/mazec/MazecIms;->mIsInputModeChangedFromApp:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1615
    :cond_4
    const-string v5, "filter"

    aget-object v6, v4, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1617
    :try_start_1
    aget-object v4, v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1618
    invoke-direct {p0, v4}, Lcom/metamoji/mazec/MazecIms;->getFilterFromApp(I)I

    move-result v4

    if-ltz v4, :cond_8

    .line 1620
    iget-object v5, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    iget-object v6, p0, Lcom/metamoji/mazec/MazecIms;->mLang:Ljava/lang/String;

    invoke-virtual {v5, v6, v4, v0}, Lcom/metamoji/mazec/MazecPreferences;->setFilter(Ljava/lang/String;IZ)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1627
    :cond_5
    iget-boolean v5, p0, Lcom/metamoji/mazec/MazecIms;->mCanInputStroke:Z

    if-nez v5, :cond_6

    goto :goto_2

    .line 1630
    :cond_6
    const-string v5, "acs"

    aget-object v6, v4, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1631
    iget-object v5, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    aget-object v4, v4, v2

    const-string v6, "1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v5, v4, v0}, Lcom/metamoji/mazec/MazecPreferences;->setAutoCommitEnabled(ZZ)V

    goto :goto_2

    .line 1635
    :cond_7
    const-string v5, "acs_delay"

    aget-object v6, v4, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1637
    :try_start_2
    aget-object v4, v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_8

    .line 1639
    iget-object v5, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    invoke-virtual {v5, v4, v0}, Lcom/metamoji/mazec/MazecPreferences;->setAutoCommitDelay(IZ)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_8
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_9
    return-void
.end method

.method private parseImeOptionsNA(Ljava/lang/String;Z)V
    .locals 9

    const/4 v0, 0x1

    .line 1401
    iput v0, p0, Lcom/metamoji/mazec/MazecIms;->mClientVer:I

    .line 1402
    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mCanInputStroke:Z

    if-eqz p1, :cond_e

    const/16 v1, 0x3f

    .line 1404
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_e

    add-int/2addr v1, v0

    .line 1406
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1407
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_e

    .line 1408
    const-string v1, "&"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1410
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    :goto_0
    const/4 v5, 0x2

    if-ge v4, v1, :cond_b

    aget-object v6, p1, v4

    .line 1411
    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1412
    array-length v7, v6

    if-eq v7, v5, :cond_0

    goto/16 :goto_1

    .line 1415
    :cond_0
    aget-object v7, v6, v2

    aget-object v6, v6, v0

    .line 1417
    const-string/jumbo v8, "stroke_input"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1418
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lcom/metamoji/mazec/MazecIms;->mCanInputStroke:Z

    goto/16 :goto_1

    .line 1422
    :cond_1
    const-string v8, "input_mode"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1424
    :try_start_0
    invoke-virtual {p0, v6}, Lcom/metamoji/mazec/MazecIms;->string2inputMode(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1431
    :cond_2
    const-string v8, "filter"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1433
    :try_start_1
    iget-object v5, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    iget-object v7, p0, Lcom/metamoji/mazec/MazecIms;->mLang:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/metamoji/mazec/MazecIms;->string2filter(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v7, v6, v2}, Lcom/metamoji/mazec/MazecPreferences;->setFilter(Ljava/lang/String;IZ)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1440
    :cond_3
    const-string v8, "acs"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1441
    iget-object v5, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6, v2}, Lcom/metamoji/mazec/MazecPreferences;->setAutoCommitEnabled(ZZ)V

    goto :goto_1

    .line 1445
    :cond_4
    const-string v8, "acs_delay"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1447
    :try_start_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_a

    .line 1449
    iget-object v6, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    invoke-virtual {v6, v5, v2}, Lcom/metamoji/mazec/MazecPreferences;->setAutoCommitDelay(IZ)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_5
    if-nez p2, :cond_6

    goto :goto_1

    .line 1460
    :cond_6
    const-string/jumbo v8, "ver"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1462
    :try_start_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v6, v0, :cond_a

    if-gt v6, v5, :cond_7

    .line 1465
    iput v6, p0, Lcom/metamoji/mazec/MazecIms;->mClientVer:I

    goto :goto_1

    .line 1467
    :cond_7
    iput v2, p0, Lcom/metamoji/mazec/MazecIms;->mClientVer:I

    .line 1468
    iput-boolean v2, p0, Lcom/metamoji/mazec/MazecIms;->mCanInputStroke:Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1476
    :cond_8
    const-string/jumbo v5, "user_char_form_register"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1477
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lcom/metamoji/mazec/MazecIms;->mUserCharFormRegisterEnabled:Z

    goto :goto_1

    .line 1481
    :cond_9
    const-string/jumbo v5, "settings"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1482
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lcom/metamoji/mazec/MazecIms;->mSettingsEnabled:Z

    :catch_0
    :cond_a
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_b
    if-eqz v3, :cond_e

    .line 1488
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v0, :cond_c

    if-eq p1, v5, :cond_d

    const/4 p2, 0x3

    if-eq p1, p2, :cond_d

    goto :goto_2

    .line 1490
    :cond_c
    iget-boolean p1, p0, Lcom/metamoji/mazec/MazecIms;->mCanInputStroke:Z

    if-nez p1, :cond_d

    goto :goto_2

    .line 1496
    :cond_d
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2, v2}, Lcom/metamoji/mazec/MazecPreferences;->setInputMode(IZ)V

    .line 1497
    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mIsInputModeChangedFromApp:Z

    :cond_e
    :goto_2
    return-void
.end method

.method private performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    .line 2400
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2402
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private postCommitText(Ljava/lang/String;)V
    .locals 0

    .line 2199
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mComposingText:Landroid/text/SpannableStringBuilder;

    if-eqz p1, :cond_0

    .line 2200
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->clear()V

    :cond_0
    return-void
.end method

.method private prevCommitText(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2187
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/MazecIms;->setComposingText(Ljava/lang/String;)V

    .line 2188
    iget-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mEnableAutoSpace:Z

    if-eqz v0, :cond_0

    .line 2189
    invoke-direct {p0, p2, p1}, Lcom/metamoji/mazec/MazecIms;->complementSpaceFoInput(Ljava/lang/String;Landroid/view/inputmethod/InputConnection;)Ljava/lang/String;

    move-result-object p2

    .line 2191
    :cond_0
    iput-object p2, p0, Lcom/metamoji/mazec/MazecIms;->mPrevCommitText:Ljava/lang/String;

    return-object p2
.end method

.method private recognize(I)V
    .locals 4

    .line 3569
    iget-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mIsAvailable:Z

    if-nez v0, :cond_0

    return-void

    .line 3573
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mHwRecognitionRequester:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3575
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getHwStrokes()Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->strokeCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 3576
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/HwStrokesModel;->updateLastStrokeRelatedActionTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/mazec/MazecIms;->mReRecognitionRequestTime:J

    const/4 p1, 0x0

    .line 3577
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/MazecIms;->setHwrResult(Lcom/metamoji/mazec/recognizer/HwRecognitionResult;)V

    .line 3578
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/MazecIms;->setCnvResult(Lcom/metamoji/mazec/converter/ConvertResult;)V

    return-void

    .line 3585
    :cond_1
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    if-lez p1, :cond_2

    .line 3582
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getLastStrokeRelatedActionTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/mazec/MazecIms;->mHwRecognitionRequesterPostTime:J

    .line 3583
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mHwRecognitionRequester:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 3585
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->updateLastStrokeRelatedActionTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/mazec/MazecIms;->mReRecognitionRequestTime:J

    const/16 p1, 0x35

    .line 3586
    invoke-direct {p0}, Lcom/metamoji/mazec/MazecIms;->getRecognitionParam()Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/metamoji/mazec/MazecIms;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private rerecognize(I)V
    .locals 4

    .line 3595
    iget-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mIsAvailable:Z

    if-nez v0, :cond_0

    return-void

    .line 3599
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mHwRecognitionRequester:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3600
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->updateLastStrokeRelatedActionTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/mazec/MazecIms;->mReRecognitionRequestTime:J

    const/16 v0, 0x37

    const/4 v1, 0x0

    .line 3603
    invoke-direct {p0, v0, v1}, Lcom/metamoji/mazec/MazecIms;->sendMessage(ILjava/lang/Object;)V

    .line 3605
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getHwStrokes()Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v0

    .line 3606
    invoke-direct {p0, v1}, Lcom/metamoji/mazec/MazecIms;->setHwrResult(Lcom/metamoji/mazec/recognizer/HwRecognitionResult;)V

    .line 3607
    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->strokeCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 3608
    invoke-direct {p0, v1}, Lcom/metamoji/mazec/MazecIms;->setCnvResult(Lcom/metamoji/mazec/converter/ConvertResult;)V

    .line 3609
    invoke-virtual {p0, v1}, Lcom/metamoji/mazec/MazecIms;->setComposingText(Ljava/lang/String;)V

    return-void

    :cond_1
    if-lez p1, :cond_2

    .line 3612
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getLastStrokeRelatedActionTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/mazec/MazecIms;->mHwRecognitionRequesterPostTime:J

    .line 3613
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mHwRecognitionRequester:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    const/16 p1, 0x35

    .line 3615
    invoke-direct {p0}, Lcom/metamoji/mazec/MazecIms;->getRecognitionParam()Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/metamoji/mazec/MazecIms;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private sendKeyEvents(I)V
    .locals 1

    .line 3765
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/MazecIms;->commitKeyEvents(I)V

    .line 3767
    invoke-direct {p0}, Lcom/metamoji/mazec/MazecIms;->breakSequence()V

    .line 3768
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/HwStrokesModel;->hasStrokes()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3769
    invoke-direct {p0, v0}, Lcom/metamoji/mazec/MazecIms;->setCnvResult(Lcom/metamoji/mazec/converter/ConvertResult;)V

    .line 3773
    :cond_0
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mRefStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    if-eqz p1, :cond_1

    .line 3774
    iput-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mRefStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    const/16 p1, 0x18

    .line 3775
    invoke-virtual {p0, p1, v0, v0}, Lcom/metamoji/mazec/MazecIms;->fireMazecEvent(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private sendKeyText(Ljava/lang/String;)V
    .locals 1

    .line 3784
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/MazecIms;->commitText(Ljava/lang/String;)V

    .line 3786
    invoke-direct {p0}, Lcom/metamoji/mazec/MazecIms;->breakSequence()V

    .line 3787
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/HwStrokesModel;->hasStrokes()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3788
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mCnvResult:Lcom/metamoji/mazec/converter/ConvertResult;

    if-eqz p1, :cond_0

    .line 3789
    invoke-direct {p0, v0}, Lcom/metamoji/mazec/MazecIms;->setCnvResult(Lcom/metamoji/mazec/converter/ConvertResult;)V

    .line 3794
    :cond_0
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mRefStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    if-eqz p1, :cond_1

    .line 3795
    iput-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mRefStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    const/16 p1, 0x18

    .line 3796
    invoke-virtual {p0, p1, v0, v0}, Lcom/metamoji/mazec/MazecIms;->fireMazecEvent(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private sendMessage(ILjava/lang/Object;)V
    .locals 0

    .line 3990
    invoke-virtual {p0, p1, p2, p0}, Lcom/metamoji/mazec/MazecIms;->sendMessage(ILjava/lang/Object;Lcom/metamoji/mazec/util/MessageHandler;)V

    return-void
.end method

.method private setBackgroundColor(I)V
    .locals 1

    .line 2764
    iget v0, p0, Lcom/metamoji/mazec/MazecIms;->mBgColor:I

    if-eq v0, p1, :cond_1

    .line 2765
    iput p1, p0, Lcom/metamoji/mazec/MazecIms;->mBgColor:I

    .line 2766
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mBgColorChangeEventShooter:Lcom/metamoji/mazec/MazecIms$EventShooter;

    if-nez p1, :cond_0

    .line 2767
    new-instance p1, Lcom/metamoji/mazec/MazecIms$5;

    invoke-direct {p1, p0}, Lcom/metamoji/mazec/MazecIms$5;-><init>(Lcom/metamoji/mazec/MazecIms;)V

    iput-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mBgColorChangeEventShooter:Lcom/metamoji/mazec/MazecIms$EventShooter;

    .line 2774
    :cond_0
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mBgColorChangeEventShooter:Lcom/metamoji/mazec/MazecIms$EventShooter;

    invoke-virtual {p0, p0, p1}, Lcom/metamoji/mazec/MazecIms;->fireEvent(Ljava/lang/Object;Lcom/metamoji/mazec/MazecIms$EventShooter;)V

    :cond_1
    return-void
.end method

.method public static setClassRoomLearnedKanjiCharacters(Ljava/lang/String;)V
    .locals 0

    .line 4344
    sput-object p0, Lcom/metamoji/mazec/MazecIms;->_classRoomLearnedKanjiCharacters:Ljava/lang/String;

    return-void
.end method

.method private setCnvResult(Lcom/metamoji/mazec/converter/ConvertResult;)V
    .locals 1

    .line 3741
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mCnvResult:Lcom/metamoji/mazec/converter/ConvertResult;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    .line 3746
    invoke-virtual {v0}, Lcom/metamoji/mazec/converter/ConvertResult;->destroy()V

    .line 3748
    :cond_1
    iput-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mCnvResult:Lcom/metamoji/mazec/converter/ConvertResult;

    .line 3750
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mConvResultUpdatedEventShooter:Lcom/metamoji/mazec/MazecIms$EventShooter;

    if-nez p1, :cond_2

    .line 3751
    new-instance p1, Lcom/metamoji/mazec/MazecIms$11;

    invoke-direct {p1, p0}, Lcom/metamoji/mazec/MazecIms$11;-><init>(Lcom/metamoji/mazec/MazecIms;)V

    iput-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mConvResultUpdatedEventShooter:Lcom/metamoji/mazec/MazecIms$EventShooter;

    .line 3758
    :cond_2
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mConvResultUpdatedEventShooter:Lcom/metamoji/mazec/MazecIms$EventShooter;

    invoke-virtual {p0, p0, p1}, Lcom/metamoji/mazec/MazecIms;->fireEvent(Ljava/lang/Object;Lcom/metamoji/mazec/MazecIms$EventShooter;)V

    return-void
.end method

.method private setHwrResult(Lcom/metamoji/mazec/recognizer/HwRecognitionResult;)V
    .locals 12

    .line 3701
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHwrResult:Lcom/metamoji/mazec/recognizer/HwRecognitionResult;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    .line 3706
    invoke-virtual {v0}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->destroy()V

    .line 3708
    :cond_1
    iput-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mHwrResult:Lcom/metamoji/mazec/recognizer/HwRecognitionResult;

    .line 3711
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mRecogSegmentation:Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    if-eqz v0, :cond_4

    .line 3712
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getHwStrokes()Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 3714
    invoke-virtual {p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->getStrokeBlocks()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 3715
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 3716
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3717
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    .line 3718
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/mazec/stroke/StrokeBlock;

    .line 3719
    new-instance v7, Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-direct {v7}, Lcom/metamoji/mazec/stroke/HwStrokes;-><init>()V

    .line 3720
    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->topLine()F

    move-result v8

    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->baseLine()F

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/metamoji/mazec/stroke/HwStrokes;->setGuidelinesWithTop(FF)V

    .line 3721
    iget-object v6, v6, Lcom/metamoji/mazec/stroke/StrokeBlock;->strokeOrders:[J

    array-length v8, v6

    move v9, v4

    :goto_1
    if-ge v9, v8, :cond_2

    aget-wide v10, v6, v9

    .line 3722
    invoke-virtual {v0, v10, v11}, Lcom/metamoji/mazec/stroke/HwStrokes;->getStrokeByStrokeOrder(J)Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object v10

    .line 3723
    invoke-virtual {v7, v10}, Lcom/metamoji/mazec/stroke/HwStrokes;->addStroke(Lcom/metamoji/mazec/stroke/HwStroke;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 3725
    :cond_2
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3727
    :cond_3
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mRecogSegmentation:Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;

    invoke-virtual {v0, p1, v2}, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->setRecogResult(Lcom/metamoji/mazec/recognizer/HwRecognitionResult;Ljava/util/List;)V

    .line 3732
    :cond_4
    invoke-direct {p0}, Lcom/metamoji/mazec/MazecIms;->fireHwRecognitionResultUpdateEvnet()V

    return-void
.end method

.method private setRecognitionSegmentationPosition(FILcom/metamoji/mazec/stroke/HwStrokes;)V
    .locals 1

    .line 4191
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mRecogSegmentation:Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4194
    :cond_0
    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->isPositionContainedInSpace(F)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 4201
    :cond_1
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mRecogSegmentation:Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;

    if-eqz p2, :cond_2

    .line 4199
    invoke-virtual {v0, p1, p3}, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->addSplitPosition(FLcom/metamoji/mazec/stroke/HwStrokes;)Z

    return-void

    .line 4201
    :cond_2
    invoke-virtual {v0, p1, p3}, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->addJoinPosition(FLcom/metamoji/mazec/stroke/HwStrokes;)Z

    return-void
.end method

.method private setReeditMode(Z)V
    .locals 3

    .line 1021
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1026
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mInReedit:Z

    if-eq v0, p1, :cond_4

    .line 1027
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->getInputMode()I

    move-result v0

    .line 1028
    iput-boolean p1, p0, Lcom/metamoji/mazec/MazecIms;->mInReedit:Z

    if-eqz p1, :cond_2

    .line 1030
    sget-object v1, Lcom/metamoji/mazec/BuildConfig;->PRODUCT_TYPE:Lcom/metamoji/mazec/BuildOption$ProductType;

    sget-object v2, Lcom/metamoji/mazec/BuildOption$ProductType;->TRIAL:Lcom/metamoji/mazec/BuildOption$ProductType;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->isTrialExpired()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1031
    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/metamoji/mazec/MazecPreferences;->setInputModeInReedit(I)V

    goto :goto_0

    .line 1033
    :cond_1
    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/metamoji/mazec/MazecPreferences;->setInputModeInReedit(I)V

    .line 1037
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->getInputMode()I

    move-result v1

    if-eq v0, v1, :cond_3

    const/4 v0, 0x0

    .line 1039
    invoke-direct {p0, v1, v0}, Lcom/metamoji/mazec/MazecIms;->onInputModeChanged(IZ)V

    .line 1041
    :cond_3
    invoke-direct {p0}, Lcom/metamoji/mazec/MazecIms;->onReeditModeChanged()V

    if-nez p1, :cond_4

    .line 1044
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/HwStrokesModel;->clear()V

    :cond_4
    :goto_1
    return-void
.end method

.method private setupRACContextForEditorInfo()V
    .locals 4

    .line 1915
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mRacContext:Lcom/metamoji/mazec/RACContext;

    if-eqz v0, :cond_2

    .line 1916
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecPreferences;->isLearnConversionEnabled()Z

    move-result v0

    .line 1917
    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    invoke-virtual {v1}, Lcom/metamoji/mazec/MazecPreferences;->getConversionMode()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1921
    :goto_0
    iget-object v3, p0, Lcom/metamoji/mazec/MazecIms;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-static {v3}, Lcom/metamoji/mazec/MazecIms;->isInputPassword(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const/16 v1, 0x6d

    const/4 v3, 0x0

    .line 1926
    invoke-direct {p0, v1, v3}, Lcom/metamoji/mazec/MazecIms;->sendMessage(ILjava/lang/Object;)V

    const/16 v1, 0x6e

    .line 1928
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/metamoji/mazec/MazecIms;->sendMessage(ILjava/lang/Object;)V

    const/16 v0, 0x6f

    .line 1930
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/metamoji/mazec/MazecIms;->sendMessage(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public static showSettingsCore(Landroid/content/Context;)V
    .locals 2

    .line 2857
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2859
    const-class v1, Lcom/metamoji/mazec/MazecPreferenceActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x34000000

    .line 2864
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2865
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public addMazecEventListener(Lcom/metamoji/mazec/MazecEventListener;)V
    .locals 1

    .line 3901
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mMazecEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnBackListener(Lcom/metamoji/mazec/MazecIms$OnBackListener;)V
    .locals 1

    .line 4123
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mOnBackListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 562
    invoke-super {p0, p1}, Lcom/metamoji/inputmethodservice/InputMethodService;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public canInputStroke()Z
    .locals 1

    .line 862
    iget-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mCanInputStroke:Z

    return v0
.end method

.method public cancelConversion()V
    .locals 2

    .line 3854
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mLastConvReq:Lcom/metamoji/mazec/util/MessageParam;

    if-eqz v0, :cond_1

    .line 3855
    invoke-virtual {v0}, Lcom/metamoji/mazec/util/MessageParam;->cancel()V

    .line 3857
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mLastConvReqCtx:Lcom/metamoji/mazec/RACExecContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3858
    invoke-virtual {v0}, Lcom/metamoji/mazec/RACExecContext;->cancel()V

    .line 3859
    iput-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mLastConvReqCtx:Lcom/metamoji/mazec/RACExecContext;

    .line 3862
    :cond_0
    iput-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mLastConvReq:Lcom/metamoji/mazec/util/MessageParam;

    :cond_1
    return-void
.end method

.method public cancelRecognition()V
    .locals 4

    .line 3870
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mLastRecogReq:Lcom/metamoji/mazec/util/MessageParam;

    if-eqz v0, :cond_1

    .line 3871
    invoke-virtual {v0}, Lcom/metamoji/mazec/util/MessageParam;->cancel()V

    .line 3873
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mLastRecogReqCtx:Lcom/metamoji/mazec/RACExecContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3874
    invoke-virtual {v0}, Lcom/metamoji/mazec/RACExecContext;->cancel()V

    .line 3875
    iput-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mLastRecogReqCtx:Lcom/metamoji/mazec/RACExecContext;

    .line 3878
    :cond_0
    iput-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mLastRecogReq:Lcom/metamoji/mazec/util/MessageParam;

    .line 3881
    :cond_1
    iget-wide v0, p0, Lcom/metamoji/mazec/MazecIms;->mHwRecognitionRequesterPostTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 3882
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mHwRecognitionRequester:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, -0x1

    .line 3883
    iput-wide v0, p0, Lcom/metamoji/mazec/MazecIms;->mHwRecognitionRequesterPostTime:J

    :cond_2
    return-void
.end method

.method public clearMazecEventListener()V
    .locals 1

    .line 3915
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mMazecEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public clearOnBackListeners()V
    .locals 1

    .line 4137
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mOnBackListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public clearStrokes()V
    .locals 1

    .line 3433
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->clear()V

    return-void
.end method

.method public commitConvertCandidate(Lcom/metamoji/mazec/converter/MmjiWord;)V
    .locals 3

    if-eqz p1, :cond_4

    .line 3496
    iget v0, p0, Lcom/metamoji/mazec/MazecIms;->mClientType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mCanInputStroke:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->hasStrokes()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3498
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHwrResult:Lcom/metamoji/mazec/recognizer/HwRecognitionResult;

    .line 3502
    iget-object v2, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    if-eqz v0, :cond_0

    .line 3499
    invoke-virtual {v0}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->getStrokeBlocks()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->diviededStrokesListByStrokeBlocks(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 3502
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mIsLatinLang:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecPreferences;->getWordSpacingCoefficient()F

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->diviedeStrokesListForKakinagashi(F)Ljava/util/List;

    move-result-object v0

    .line 3504
    :goto_1
    invoke-virtual {p1}, Lcom/metamoji/mazec/converter/MmjiWord;->getCandidate()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/metamoji/mazec/MazecIms;->commitTextAndStrokes(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_2

    .line 3506
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/mazec/converter/MmjiWord;->getCandidate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/MazecIms;->commitText(Ljava/lang/String;)V

    .line 3508
    :goto_2
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->getInputMode()I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->hasStrokes()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mLang:Ljava/lang/String;

    .line 3509
    invoke-static {v0}, Lcom/metamoji/mazec/MazecConfig;->isRecognitionLearningAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mLang:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/mazec/MazecConfig;->isRecognitionImplicitLearningEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x40

    .line 3511
    invoke-static {p0}, Lcom/metamoji/mazec/MazecConfig;->getRecogLearningDeviceTag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/metamoji/mazec/MazecIms;->sendMessage(ILjava/lang/Object;)V

    .line 3514
    :cond_3
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecPreferences;->isLearnConversionEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x6a

    invoke-direct {p0, v0, p1}, Lcom/metamoji/mazec/MazecIms;->sendMessage(ILjava/lang/Object;)V

    const/4 p1, 0x1

    .line 3515
    iput-boolean p1, p0, Lcom/metamoji/mazec/MazecIms;->mIsLearning:Z

    .line 3518
    :cond_4
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mRefStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 3519
    iput-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mRefStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    const/16 p1, 0x18

    .line 3520
    invoke-virtual {p0, p1, v0, v0}, Lcom/metamoji/mazec/MazecIms;->fireMazecEvent(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 3523
    :cond_5
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/HwStrokesModel;->clear()V

    .line 3526
    const-string p1, ""

    invoke-direct {p0, p1, v0}, Lcom/metamoji/mazec/MazecIms;->createConversionParam(Ljava/lang/String;Lcom/metamoji/mazec/recognizer/HwRecognitionResult;)[Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x66

    invoke-direct {p0, v0, p1}, Lcom/metamoji/mazec/MazecIms;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public commitKeyEvents(I)V
    .locals 2

    .line 2312
    iget-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mEnableAutoSpace:Z

    if-eqz v0, :cond_0

    .line 2313
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x42

    if-ne p1, v1, :cond_0

    .line 2316
    invoke-direct {p0, v0}, Lcom/metamoji/mazec/MazecIms;->deleteAutoInsertedSpace(Landroid/view/inputmethod/InputConnection;)V

    .line 2321
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mPrevCommitText:Ljava/lang/String;

    const/4 v0, -0x1

    .line 2322
    iput v0, p0, Lcom/metamoji/mazec/MazecIms;->mCommitStartCursor:I

    .line 2324
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/MazecIms;->sendDownUpKeyEvents(I)V

    return-void
.end method

.method public commitPrivateCommand(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    .line 2333
    iget v0, p0, Lcom/metamoji/mazec/MazecIms;->mClientType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 2337
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2339
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2341
    const-string v2, "com.sevenknowledge.mazec.action.commit_strokes"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "data"

    if-eqz v2, :cond_2

    .line 2344
    check-cast p2, Ljava/util/List;

    .line 2345
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2346
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    .line 2348
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-static {v6}, Lcom/metamoji/mazec/stroke/StrokeUtil;->convertStrokesTo7note(Lcom/metamoji/mazec/stroke/HwStrokes;)Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2350
    :cond_1
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 2351
    :cond_2
    const-string v2, "com.sevenknowledge.mazec.action.result_of_set_strokes"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2353
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 2354
    :cond_3
    const-string v2, "com.sevenknowledge.mazec.action.input_mode_changed"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2356
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 2357
    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 2358
    :cond_4
    const-string v2, "com.sevenknowledge.mazec.action.skip_reedit"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    .line 2360
    :cond_5
    const-string v2, "com.sevenknowledge.mazec.action.reedit_supported"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2362
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 2363
    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2366
    :cond_6
    :goto_1
    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    :cond_7
    :goto_2
    return-void
.end method

.method public commitStrokes()V
    .locals 3

    .line 3460
    iget-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mCanInputStroke:Z

    if-nez v0, :cond_0

    return-void

    .line 3463
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->getStrokesList()Ljava/util/List;

    move-result-object v0

    .line 3465
    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v1}, Lcom/metamoji/mazec/ui/HwStrokesModel;->clear()V

    .line 3466
    invoke-direct {p0, v0}, Lcom/metamoji/mazec/MazecIms;->commitStrokes(Ljava/util/List;)V

    .line 3469
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 3470
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazec/stroke/HwStrokes;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mRefStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    const/16 v1, 0x18

    .line 3471
    invoke-virtual {p0, v1, v0, v2}, Lcom/metamoji/mazec/MazecIms;->fireMazecEvent(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public commitText(Ljava/lang/String;)V
    .locals 4

    .line 2164
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2171
    invoke-direct {p0, v0, p1}, Lcom/metamoji/mazec/MazecIms;->prevCommitText(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz v0, :cond_1

    .line 2174
    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v1, v1, 0xf

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 2175
    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_1

    .line 2178
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-char v3, v0, v2

    .line 2179
    invoke-virtual {p0, v3}, Lcom/metamoji/mazec/MazecIms;->sendKeyChar(C)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2183
    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/MazecIms;->postCommitText(Ljava/lang/String;)V

    return-void
.end method

.method public contextChanged()V
    .locals 1

    .line 3805
    invoke-direct {p0}, Lcom/metamoji/mazec/MazecIms;->breakSequence()V

    .line 3808
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mCnvResult:Lcom/metamoji/mazec/converter/ConvertResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->hasStrokes()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3809
    invoke-direct {p0, v0}, Lcom/metamoji/mazec/MazecIms;->setCnvResult(Lcom/metamoji/mazec/converter/ConvertResult;)V

    :cond_0
    return-void
.end method

.method public deleteLastStroke()V
    .locals 3

    .line 3292
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    iget-boolean v1, p0, Lcom/metamoji/mazec/MazecIms;->mIsLatinLang:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/mazec/ui/HwStrokesModel;->deleteLastStroke(ZZ)Z

    return-void
.end method

.method public deleteLastStrokeBlock()V
    .locals 3

    .line 3300
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->getInputMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3301
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHwrResult:Lcom/metamoji/mazec/recognizer/HwRecognitionResult;

    if-eqz v0, :cond_0

    .line 3302
    invoke-virtual {v0}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->getStrokeBlocks()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 3305
    :cond_1
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    iget-boolean v1, p0, Lcom/metamoji/mazec/MazecIms;->mIsLatinLang:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    invoke-virtual {v1}, Lcom/metamoji/mazec/MazecPreferences;->getWordSpacingCoefficient()F

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getStrokeBlocks(F)Ljava/util/List;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_3

    .line 3309
    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/mazec/ui/HwStrokesModel;->deleteLastStrokeBlock(Ljava/util/List;Z)Z

    :cond_3
    return-void
.end method

.method protected disposeContext()V
    .locals 2

    .line 567
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mRacContext:Lcom/metamoji/mazec/RACContext;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x16

    const/4 v1, 0x0

    .line 571
    invoke-direct {p0, v0, v1}, Lcom/metamoji/mazec/MazecIms;->sendMessage(ILjava/lang/Object;)V

    .line 572
    iput-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mRacContext:Lcom/metamoji/mazec/RACContext;

    return-void
.end method

.method public fireEvent(Ljava/lang/Object;Lcom/metamoji/mazec/MazecIms$EventShooter;)V
    .locals 2

    .line 3940
    iget-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mIsAvailable:Z

    if-eqz v0, :cond_1

    .line 3941
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mMazecEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/MazecEventListener;

    if-eq v1, p1, :cond_0

    .line 3943
    invoke-interface {p2, v1}, Lcom/metamoji/mazec/MazecIms$EventShooter;->shoot(Lcom/metamoji/mazec/MazecEventListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public fireMazecEvent(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 3922
    iget-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mIsAvailable:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 3931
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mMazecEventListeners:Ljava/util/ArrayList;

    if-nez p3, :cond_1

    .line 3927
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazec/MazecEventListener;

    .line 3928
    invoke-interface {v0, p1, p2}, Lcom/metamoji/mazec/MazecEventListener;->onEvent(ILjava/lang/Object;)V

    goto :goto_0

    .line 3931
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/MazecEventListener;

    if-eq v1, p3, :cond_2

    .line 3933
    invoke-interface {v1, p1, p2}, Lcom/metamoji/mazec/MazecEventListener;->onEvent(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public freeLanguageResource(Ljava/lang/String;)Z
    .locals 1

    .line 1316
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mLang:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1317
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mRacContext:Lcom/metamoji/mazec/RACContext;

    if-eqz p1, :cond_1

    const/16 p1, 0x3a

    const/4 v0, 0x0

    .line 1320
    invoke-direct {p0, p1, v0}, Lcom/metamoji/mazec/MazecIms;->sendMessage(ILjava/lang/Object;)V

    .line 1321
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mStrokes2Text:Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;

    if-eqz p1, :cond_0

    .line 1322
    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->setLanguage(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 1118
    iget v0, p0, Lcom/metamoji/mazec/MazecIms;->mBgColor:I

    return v0
.end method

.method public getClassroomLearnedKanjiCharactersIfLearnedPreced()Ljava/lang/String;
    .locals 3

    .line 4352
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4355
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecPreferences;->getKanjiRecognitionMode()I

    move-result v0

    sget v2, Lcom/metamoji/mazec/RACConfig;->KANJI_RECOGNITION_MODE_LEARNED_PRECED:I

    if-eq v0, v2, :cond_1

    return-object v1

    .line 4358
    :cond_1
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getClassRoomLearnedKanjiCharacters()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientType()I
    .locals 1

    .line 858
    iget v0, p0, Lcom/metamoji/mazec/MazecIms;->mClientType:I

    return v0
.end method

.method public getCnvResult()Lcom/metamoji/mazec/converter/ConvertResult;
    .locals 1

    .line 1139
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mCnvResult:Lcom/metamoji/mazec/converter/ConvertResult;

    return-object v0
.end method

.method public getCurrentPenIndex()I
    .locals 1

    .line 1198
    iget v0, p0, Lcom/metamoji/mazec/MazecIms;->mCurPenIndex:I

    return v0
.end method

.method public getCurrentPenStyle()Lcom/metamoji/nt/share/NtPenStyle;
    .locals 2

    .line 1186
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mPenStyles:Ljava/util/List;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/metamoji/mazec/MazecIms;->mCurPenIndex:I

    if-ltz v1, :cond_0

    .line 1187
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mPenStyles:Ljava/util/List;

    iget v1, p0, Lcom/metamoji/mazec/MazecIms;->mCurPenIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/share/NtPenStyle;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditorAction()I
    .locals 2

    .line 2371
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 2374
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return v0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .locals 1

    .line 1160
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 839
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getHwStrokesModel()Lcom/metamoji/mazec/ui/HwStrokesModel;
    .locals 1

    .line 1125
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    return-object v0
.end method

.method public getHwrResult()Lcom/metamoji/mazec/recognizer/HwRecognitionResult;
    .locals 1

    .line 1132
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHwrResult:Lcom/metamoji/mazec/recognizer/HwRecognitionResult;

    return-object v0
.end method

.method public getInputMode()I
    .locals 2

    .line 1057
    iget-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mInReedit:Z

    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/metamoji/mazec/MazecPreferences;->getInputModeInReedit()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/mazec/MazecPreferences;->getInputMode()I

    move-result v0

    return v0
.end method

.method public getInputView()Landroid/view/View;
    .locals 1

    .line 846
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mInputView:Lcom/metamoji/mazec/ui/MazecView;

    return-object v0
.end method

.method public getLangDicDir()Ljava/lang/String;
    .locals 1

    .line 4182
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mLangDicDir:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mLang:Ljava/lang/String;

    return-object v0
.end method

.method public getPenStyles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/nt/share/NtPenStyle;",
            ">;"
        }
    .end annotation

    .line 1194
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mPenStyles:Ljava/util/List;

    return-object v0
.end method

.method public getPrefs()Lcom/metamoji/mazec/MazecPreferences;
    .locals 1

    .line 1167
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    return-object v0
.end method

.method public getRecognitionSegmentation()Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;
    .locals 1

    .line 4206
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mRecogSegmentation:Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;

    return-object v0
.end method

.method public getRefStrokes()Lcom/metamoji/mazec/stroke/HwStrokes;
    .locals 1

    .line 1146
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mRefStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    return-object v0
.end method

.method getStrokesList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStrokes;",
            ">;"
        }
    .end annotation

    .line 3452
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->getInputMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHwrResult:Lcom/metamoji/mazec/recognizer/HwRecognitionResult;

    if-eqz v0, :cond_0

    .line 3453
    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v0}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->getStrokeBlocks()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->diviededStrokesListByStrokeBlocks(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3456
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    iget-boolean v1, p0, Lcom/metamoji/mazec/MazecIms;->mIsLatinLang:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    invoke-virtual {v1}, Lcom/metamoji/mazec/MazecPreferences;->getWordSpacingCoefficient()F

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ui/HwStrokesModel;->diviedeStrokesListForKakinagashi(F)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTrialEndDate()Ljava/util/Calendar;
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mTrialEndDate:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getViewResId()Ljava/lang/String;
    .locals 1

    .line 1276
    const-string v0, "layout.mazec_view"

    return-object v0
.end method

.method public handleClipboardButton()V
    .locals 13

    .line 2899
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2901
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2902
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v6, 0x0

    const/16 v7, 0xdd

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide v4, v2

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_0
    return-void
.end method

.method public handleConverted(Ljava/lang/Object;)V
    .locals 0

    .line 4054
    check-cast p1, Lcom/metamoji/mazec/converter/ConvertResult;

    .line 4056
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/MazecIms;->setCnvResult(Lcom/metamoji/mazec/converter/ConvertResult;)V

    .line 4058
    invoke-virtual {p1}, Lcom/metamoji/mazec/converter/ConvertResult;->getInput()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/MazecIms;->setComposingText(Ljava/lang/String;)V

    return-void
.end method

.method public handleGetFilterCharacters(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public handleGetLearnedKanjiCharacters(Ljava/lang/Object;)V
    .locals 0

    .line 4064
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/metamoji/mazec/MazecIms;->setClassRoomLearnedKanjiCharacters(Ljava/lang/String;)V

    return-void
.end method

.method public handleHwRecognized(Ljava/lang/Object;J)V
    .locals 3

    .line 4025
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->cancelConversion()V

    .line 4027
    check-cast p1, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 4030
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->getTopCandidateString()Ljava/lang/String;

    move-result-object v0

    .line 4032
    :goto_0
    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v1}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getLastStrokeRelatedActionTime()J

    move-result-wide v1

    cmp-long p2, p2, v1

    if-ltz p2, :cond_1

    .line 4034
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/MazecIms;->setHwrResult(Lcom/metamoji/mazec/recognizer/HwRecognitionResult;)V

    :cond_1
    if-eqz v0, :cond_2

    const/16 p2, 0x21

    .line 4037
    invoke-virtual {v0, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x1

    .line 4038
    invoke-virtual {v0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 4039
    const-string/jumbo v1, "showseg"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 4040
    invoke-static {p2}, Lcom/metamoji/mazec/MazecConfig;->setDebugShowRecognitionSegmentationPoints(Z)V

    :cond_2
    if-eqz v0, :cond_3

    const/16 p2, 0x66

    .line 4045
    invoke-direct {p0, v0, p1}, Lcom/metamoji/mazec/MazecIms;->createConversionParam(Ljava/lang/String;Lcom/metamoji/mazec/recognizer/HwRecognitionResult;)[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/metamoji/mazec/MazecIms;->sendMessage(ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public handleMessage(IJLjava/lang/Object;)V
    .locals 2

    .line 4080
    iget-wide v0, p0, Lcom/metamoji/mazec/MazecIms;->mReRecognitionRequestTime:J

    cmp-long v0, p2, v0

    if-ltz v0, :cond_6

    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->getInputMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eq p1, v1, :cond_5

    const/4 p2, 0x3

    if-eq p1, p2, :cond_4

    const/4 p2, 0x4

    if-eq p1, p2, :cond_3

    const/16 p2, 0x10e

    if-eq p1, p2, :cond_2

    const/16 p2, 0x10f

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 4100
    :cond_1
    invoke-virtual {p0, p4}, Lcom/metamoji/mazec/MazecIms;->handleGetLearnedKanjiCharacters(Ljava/lang/Object;)V

    return-void

    .line 4097
    :cond_2
    invoke-virtual {p0, p4}, Lcom/metamoji/mazec/MazecIms;->handleGetFilterCharacters(Ljava/lang/Object;)V

    return-void

    .line 4090
    :cond_3
    invoke-virtual {p0, p4}, Lcom/metamoji/mazec/MazecIms;->handleConverted(Ljava/lang/Object;)V

    return-void

    .line 4094
    :cond_4
    invoke-virtual {p0, p4}, Lcom/metamoji/mazec/MazecIms;->handleConverted(Ljava/lang/Object;)V

    return-void

    .line 4086
    :cond_5
    invoke-virtual {p0, p4, p2, p3}, Lcom/metamoji/mazec/MazecIms;->handleHwRecognized(Ljava/lang/Object;J)V

    :cond_6
    :goto_0
    return-void
.end method

.method public hasComposingText()Z
    .locals 1

    .line 1153
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mComposingText:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hideWindow()V
    .locals 0

    .line 1982
    invoke-super {p0}, Lcom/metamoji/inputmethodservice/InputMethodService;->hideWindow()V

    return-void
.end method

.method public inputMode2string(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1531
    const-string p1, "keyboard"

    return-object p1

    .line 1534
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "!!!INVALID INPUT MODE!!!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1528
    :cond_1
    const-string/jumbo p1, "text"

    return-object p1

    .line 1525
    :cond_2
    const-string/jumbo p1, "stroke"

    return-object p1
.end method

.method public isEnableAutoSpace()Z
    .locals 1

    .line 719
    iget-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mEnableAutoSpace:Z

    return v0
.end method

.method public isInReedit()Z
    .locals 1

    .line 1011
    iget-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mInReedit:Z

    return v0
.end method

.method public isInputModeChangedFromApp()Z
    .locals 1

    .line 4148
    iget-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mIsInputModeChangedFromApp:Z

    return v0
.end method

.method public isLandscapeMode()Z
    .locals 1

    .line 877
    iget-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mIsLandscapeMode:Z

    return v0
.end method

.method public isLatinLang()Z
    .locals 1

    .line 704
    iget-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mIsLatinLang:Z

    return v0
.end method

.method public isRequesingRecognize()Z
    .locals 4

    .line 3635
    invoke-static {}, Lcom/metamoji/mazec/BackgroundTaskHandler;->getHandler()Lcom/metamoji/mazec/BackgroundTaskHandler;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3636
    iget-object v2, p0, Lcom/metamoji/mazec/MazecIms;->mRacContext:Lcom/metamoji/mazec/RACContext;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x35

    .line 3639
    invoke-virtual {v0, v2}, Lcom/metamoji/mazec/BackgroundTaskHandler;->hasMessages(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    .line 3642
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/mazec/BackgroundTaskHandler;->isHandlingRecognizeString()Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    :cond_2
    :goto_0
    return v1
.end method

.method public isSettingsEnabled()Z
    .locals 1

    .line 870
    iget-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mSettingsEnabled:Z

    return v0
.end method

.method public isShowAdv7notes()Z
    .locals 1

    .line 2886
    iget-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mShowAdv7notes:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    iget-boolean v0, v0, Lcom/metamoji/mazec/MazecPreferences;->showAdvertisement:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTrialExpired()Z
    .locals 3

    .line 579
    sget-object v0, Lcom/metamoji/mazec/BuildConfig;->PRODUCT_TYPE:Lcom/metamoji/mazec/BuildOption$ProductType;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$ProductType;->TRIAL:Lcom/metamoji/mazec/BuildOption$ProductType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 584
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 594
    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mTrialStartDate:Ljava/util/Calendar;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-gtz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mTrialEndDate:Ljava/util/Calendar;

    if-eqz v1, :cond_3

    .line 595
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    return v2
.end method

.method public isUserCharFormRegisterEnabled()Z
    .locals 1

    .line 866
    iget-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mUserCharFormRegisterEnabled:Z

    return v0
.end method

.method public notifyHandwritingEnd()V
    .locals 3

    .line 2427
    iget v0, p0, Lcom/metamoji/mazec/MazecIms;->mClientType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 2433
    :cond_0
    const-string v0, "com.metamoji.mazecapi.client_notify.handwriting_ended"

    invoke-direct {p0, v0, v2}, Lcom/metamoji/mazec/MazecIms;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    return-void

    .line 2429
    :cond_1
    const-string v0, "com.sevenknowledge.mazec.action.handwriting_ended"

    invoke-direct {p0, v0, v2}, Lcom/metamoji/mazec/MazecIms;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    return-void
.end method

.method public notifyHandwritingStart()V
    .locals 3

    .line 2411
    iget v0, p0, Lcom/metamoji/mazec/MazecIms;->mClientType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 2417
    :cond_0
    const-string v0, "com.metamoji.mazecapi.client_notify.handwriting_began"

    invoke-direct {p0, v0, v2}, Lcom/metamoji/mazec/MazecIms;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    return-void

    .line 2413
    :cond_1
    const-string v0, "com.sevenknowledge.mazec.action.handwriting_began"

    invoke-direct {p0, v0, v2}, Lcom/metamoji/mazec/MazecIms;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    return-void
.end method

.method public notifyInputViewTouched()V
    .locals 2

    .line 2443
    iget v0, p0, Lcom/metamoji/mazec/MazecIms;->mClientType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 2445
    :cond_0
    const-string v0, "com.sevenknowledge.mazec.action.mazec_touched"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/metamoji/mazec/MazecIms;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    return-void
.end method

.method public onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 2484
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 2487
    :cond_0
    iget v0, p0, Lcom/metamoji/mazec/MazecIms;->mClientType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 2498
    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/MazecIms;->onAppPrivateCommandUN(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 2493
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/MazecIms;->onAppPrivateCommandNA(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 2489
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/MazecIms;->onAppPrivateCommand7N(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onComputeInsets(Lcom/metamoji/inputmethodservice/InputMethodService$Insets;)V
    .locals 2

    .line 1256
    invoke-super {p0, p1}, Lcom/metamoji/inputmethodservice/InputMethodService;->onComputeInsets(Lcom/metamoji/inputmethodservice/InputMethodService$Insets;)V

    .line 1263
    sget-object v0, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1270
    :cond_0
    sget-object v0, Lcom/metamoji/mazec/BuildOption;->DEVICE_TYPE:Lcom/metamoji/mazec/BuildOption$DeviceType;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$DeviceType;->TABLET:Lcom/metamoji/mazec/BuildOption$DeviceType;

    if-ne v0, v1, :cond_1

    .line 1271
    iget v0, p1, Lcom/metamoji/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    iput v0, p1, Lcom/metamoji/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 2083
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mComposingText:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2084
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/MazecIms;->setComposingText(Ljava/lang/String;)V

    .line 2085
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mComposingText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2088
    :cond_0
    invoke-super {p0, p1}, Lcom/metamoji/inputmethodservice/InputMethodService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 790
    invoke-super {p0}, Lcom/metamoji/inputmethodservice/InputMethodService;->onCreate()V

    .line 792
    invoke-static {p0}, Lcom/metamoji/mazec/MazecConfig;->getLanguageBaseDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mLangDicDir:Ljava/lang/String;

    .line 795
    invoke-static {p0}, Lcom/metamoji/mazec/LangResouceManager;->getInstance(Landroid/content/Context;)Lcom/metamoji/mazec/LangResouceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/LangResouceManager;->checkInitialLanguages()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    sget-boolean v0, Lcom/metamoji/mazec/BuildConfig;->SUPPORT_IN_APP_BILLING:Z

    if-eqz v0, :cond_0

    .line 800
    invoke-static {}, Lcom/metamoji/mazec/purchase/PurchaseManager;->getInstance()Lcom/metamoji/mazec/purchase/PurchaseManager;

    move-result-object v0

    .line 801
    invoke-virtual {v0, p0}, Lcom/metamoji/mazec/purchase/PurchaseManager;->checkPurchaseInfomation(Landroid/content/Context;)V

    .line 805
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/mazec/MazecIms;->initTrialPeriod()V

    .line 808
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 809
    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Lcom/metamoji/mazec/MazecIms;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 810
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 812
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/metamoji/mazec/MazecIms;->density:F

    .line 814
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Lcom/metamoji/mazec/MazecIms;->screenSizeType:I

    .line 816
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/metamoji/mazec/MazecIms;->screenMinSize:I

    .line 818
    new-instance v0, Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-direct {v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    .line 821
    const-string v0, "handwriting recognition and conversion handler"

    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v0, v1}, Lcom/metamoji/mazec/BackgroundTaskHandler;->startHandler(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    .line 824
    invoke-static {}, Lcom/metamoji/mazec/BackgroundTaskHandler;->getHandler()Lcom/metamoji/mazec/BackgroundTaskHandler;

    move-result-object v0

    .line 825
    new-instance v1, Lcom/metamoji/mazec/util/MessageParam;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p0}, Lcom/metamoji/mazec/util/MessageParam;-><init>(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageHandler;Ljava/lang/Object;)V

    const/16 v2, 0xb

    .line 826
    invoke-virtual {v0, v2, v1}, Lcom/metamoji/mazec/BackgroundTaskHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/BackgroundTaskHandler;->sendMessage(Landroid/os/Message;)Z

    .line 828
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->restorePrefs()V

    .line 829
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecPreferences;->getInputLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/MazecIms;->restoreLanguage(Ljava/lang/String;)Z

    return-void
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 3

    .line 1232
    sget-object v0, Lcom/metamoji/mazec/MazecIms;->mSelf:Lcom/metamoji/mazec/MazecIms;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    return-object v1

    .line 1236
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mInputView:Lcom/metamoji/mazec/ui/MazecView;

    if-eqz v0, :cond_1

    .line 1237
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/MazecView;->replacing()V

    .line 1238
    iput-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mInputView:Lcom/metamoji/mazec/ui/MazecView;

    .line 1240
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->clearMazecEventListener()V

    .line 1243
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->clearOnBackListeners()V

    .line 1245
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->clearListeners()V

    .line 1246
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    new-instance v2, Lcom/metamoji/mazec/MazecIms$HwStrokeListenerImpl;

    invoke-direct {v2, p0, v1}, Lcom/metamoji/mazec/MazecIms$HwStrokeListenerImpl;-><init>(Lcom/metamoji/mazec/MazecIms;Lcom/metamoji/mazec/MazecIms-IA;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/mazec/ui/HwStrokesModel;->addListener(Lcom/metamoji/mazec/ui/HwStrokeListener;)V

    .line 1248
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1249
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->getViewResId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    .line 1248
    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazec/ui/MazecView;

    iput-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mInputView:Lcom/metamoji/mazec/ui/MazecView;

    .line 1250
    invoke-virtual {v0, p0}, Lcom/metamoji/mazec/ui/MazecView;->initView(Lcom/metamoji/mazec/MazecIms;)V

    .line 1251
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mInputView:Lcom/metamoji/mazec/ui/MazecView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .line 2965
    invoke-static {}, Lcom/metamoji/mazec/BackgroundTaskHandler;->getHandler()Lcom/metamoji/mazec/BackgroundTaskHandler;

    move-result-object v0

    .line 2966
    new-instance v1, Lcom/metamoji/mazec/util/MessageParam;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/metamoji/mazec/util/MessageParam;-><init>(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageHandler;)V

    const/16 v3, 0xc

    .line 2967
    invoke-virtual {v0, v3, v1}, Lcom/metamoji/mazec/BackgroundTaskHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/BackgroundTaskHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2974
    invoke-virtual {v0}, Lcom/metamoji/mazec/BackgroundTaskHandler;->join()V

    .line 2980
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2981
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2982
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2984
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->clearMazecEventListener()V

    .line 2985
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mOnBackListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2987
    iput-object v2, p0, Lcom/metamoji/mazec/MazecIms;->mInputView:Lcom/metamoji/mazec/ui/MazecView;

    .line 2992
    invoke-static {}, Lcom/metamoji/mazec/purchase/PurchaseManager;->disposeIfExists()V

    .line 2994
    invoke-super {p0}, Lcom/metamoji/inputmethodservice/InputMethodService;->onDestroy()V

    .line 2996
    sput-object v2, Lcom/metamoji/mazec/MazecIms;->mSelf:Lcom/metamoji/mazec/MazecIms;

    return-void
.end method

.method public onEvaluateFullscreenMode()Z
    .locals 3

    .line 2097
    iget v0, p0, Lcom/metamoji/mazec/MazecIms;->mClientType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2101
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    if-eqz v0, :cond_1

    .line 2102
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2103
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 2104
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    iget-boolean v0, v0, Lcom/metamoji/mazec/MazecPreferences;->fullscreenEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public onEvaluateInputViewShown()Z
    .locals 1

    .line 2119
    invoke-super {p0}, Lcom/metamoji/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    const/4 v0, 0x1

    return v0
.end method

.method public onEvent(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x5

    const/16 v1, 0x66

    if-eq p1, v0, :cond_7

    const/4 p3, 0x6

    const/4 v0, 0x0

    if-eq p1, p3, :cond_6

    const/16 p3, 0x9

    if-eq p1, p3, :cond_5

    const/16 p3, 0x17

    if-eq p1, p3, :cond_4

    const/16 p3, 0x14

    if-eq p1, p3, :cond_2

    const/16 p3, 0x15

    const/4 v2, 0x0

    if-eq p1, p3, :cond_1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 3271
    :pswitch_0
    check-cast p2, Ljava/lang/String;

    const/16 p1, 0x68

    .line 3272
    invoke-direct {p0, p2, v2}, Lcom/metamoji/mazec/MazecIms;->createConversionParam(Ljava/lang/String;Lcom/metamoji/mazec/recognizer/HwRecognitionResult;)[Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/MazecIms;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 3264
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    .line 3265
    invoke-direct {p0, p2, v2}, Lcom/metamoji/mazec/MazecIms;->createConversionParam(Ljava/lang/String;Lcom/metamoji/mazec/recognizer/HwRecognitionResult;)[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/metamoji/mazec/MazecIms;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 3249
    :pswitch_2
    check-cast p2, Ljava/lang/Integer;

    if-nez p2, :cond_0

    goto :goto_0

    .line 3250
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/metamoji/mazec/MazecIms;->recognize(I)V

    goto/16 :goto_2

    .line 3174
    :pswitch_3
    check-cast p2, Ljava/lang/String;

    .line 3175
    invoke-direct {p0, p2}, Lcom/metamoji/mazec/MazecIms;->sendKeyText(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3278
    :cond_1
    invoke-direct {p0, v2}, Lcom/metamoji/mazec/MazecIms;->setCnvResult(Lcom/metamoji/mazec/converter/ConvertResult;)V

    goto/16 :goto_2

    .line 3257
    :cond_2
    check-cast p2, Ljava/lang/Integer;

    if-nez p2, :cond_3

    goto :goto_1

    .line 3258
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    invoke-direct {p0, v0}, Lcom/metamoji/mazec/MazecIms;->rerecognize(I)V

    goto/16 :goto_2

    .line 3217
    :cond_4
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3219
    iget-object p2, p0, Lcom/metamoji/mazec/MazecIms;->mHwrResult:Lcom/metamoji/mazec/recognizer/HwRecognitionResult;

    if-eqz p2, :cond_9

    if-ltz p1, :cond_9

    invoke-virtual {p2}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->getCount()I

    move-result p2

    if-ge p1, p2, :cond_9

    .line 3220
    iget-object p2, p0, Lcom/metamoji/mazec/MazecIms;->mHwrResult:Lcom/metamoji/mazec/recognizer/HwRecognitionResult;

    invoke-virtual {p2, p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->getCandidates(I)Lcom/metamoji/mazec/recognizer/HwCandidates;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {p2}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getHwStrokes()Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/mazec/recognizer/HwCandidates;->getTargetStrokes(Lcom/metamoji/mazec/stroke/HwStrokes;)Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object p1

    .line 3222
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3223
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3226
    new-instance p1, Lcom/metamoji/mazecapi/StrokesAndStyles;

    invoke-static {p2}, Lcom/metamoji/mazec/stroke/StrokeUtil;->convertStrokesListToNA(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/metamoji/mazecapi/StrokesAndStyles;-><init>(Ljava/util/List;)V

    .line 3227
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p3, 0x10000000

    .line 3231
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3233
    const-string/jumbo p3, "strokes"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3234
    invoke-virtual {p0, p2}, Lcom/metamoji/mazec/MazecIms;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 3167
    :cond_5
    check-cast p2, Ljava/lang/Integer;

    .line 3168
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/metamoji/mazec/MazecIms;->sendKeyEvents(I)V

    goto/16 :goto_2

    .line 3206
    :cond_6
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3208
    iget-object p2, p0, Lcom/metamoji/mazec/MazecIms;->mHwrResult:Lcom/metamoji/mazec/recognizer/HwRecognitionResult;

    if-eqz p2, :cond_9

    if-ltz p1, :cond_9

    .line 3209
    invoke-virtual {p2}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->getCount()I

    move-result p2

    if-ge p1, p2, :cond_9

    .line 3210
    iget-object p2, p0, Lcom/metamoji/mazec/MazecIms;->mHwrResult:Lcom/metamoji/mazec/recognizer/HwRecognitionResult;

    invoke-virtual {p2, p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->getCandidates(I)Lcom/metamoji/mazec/recognizer/HwCandidates;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    .line 3211
    invoke-virtual {p2}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getHwStrokes()Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/mazec/recognizer/HwCandidates;->getTargetStrokes(Lcom/metamoji/mazec/stroke/HwStrokes;)Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object p1

    .line 3212
    iget-object p2, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {p2, p1, v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->deleteStrokes(Lcom/metamoji/mazec/stroke/HwStrokes;Z)V

    goto :goto_2

    .line 3181
    :cond_7
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3182
    check-cast p3, Ljava/lang/String;

    .line 3184
    iget-object p2, p0, Lcom/metamoji/mazec/MazecIms;->mHwrResult:Lcom/metamoji/mazec/recognizer/HwRecognitionResult;

    if-eqz p2, :cond_9

    .line 3185
    invoke-virtual {p2, p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->getCandidates(I)Lcom/metamoji/mazec/recognizer/HwCandidates;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 3188
    invoke-virtual {p2}, Lcom/metamoji/mazec/recognizer/HwCandidates;->getMostProbableCandidate()Lcom/metamoji/mazec/recognizer/HwCandidate;

    move-result-object v0

    iget-object v0, v0, Lcom/metamoji/mazec/recognizer/HwCandidate;->text:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 3189
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHwrResult:Lcom/metamoji/mazec/recognizer/HwRecognitionResult;

    invoke-virtual {v0, p1, p3}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->selectCandidate(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 3191
    invoke-virtual {p2}, Lcom/metamoji/mazec/recognizer/HwCandidates;->clone()Lcom/metamoji/mazec/recognizer/HwCandidates;

    move-result-object p1

    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    const/16 p2, 0x3c

    .line 3190
    invoke-direct {p0, p2, p1}, Lcom/metamoji/mazec/MazecIms;->sendMessage(ILjava/lang/Object;)V

    .line 3192
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mHwrResult:Lcom/metamoji/mazec/recognizer/HwRecognitionResult;

    invoke-virtual {p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->getTopCandidateString()Ljava/lang/String;

    move-result-object p1

    .line 3193
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_8

    .line 3194
    iget-object p2, p0, Lcom/metamoji/mazec/MazecIms;->mHwrResult:Lcom/metamoji/mazec/recognizer/HwRecognitionResult;

    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/MazecIms;->createConversionParam(Ljava/lang/String;Lcom/metamoji/mazec/recognizer/HwRecognitionResult;)[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/metamoji/mazec/MazecIms;->sendMessage(ILjava/lang/Object;)V

    .line 3196
    :cond_8
    invoke-direct {p0}, Lcom/metamoji/mazec/MazecIms;->fireHwRecognitionResultUpdateEvnet()V

    :cond_9
    :goto_2
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onFinishInput()V
    .locals 3

    .line 1748
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mStrokes2Text:Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1749
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->dispose()V

    .line 1750
    iput-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mStrokes2Text:Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;

    .line 1753
    :cond_0
    iget v0, p0, Lcom/metamoji/mazec/MazecIms;->mClientType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1754
    const-string v0, "com.metamoji.mazecapi.client_notify.input_finish"

    invoke-direct {p0, v0, v1}, Lcom/metamoji/mazec/MazecIms;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 1757
    :cond_1
    invoke-super {p0}, Lcom/metamoji/inputmethodservice/InputMethodService;->onFinishInput()V

    return-void
.end method

.method public onFinishInputView(Z)V
    .locals 4

    const/4 v0, -0x1

    .line 1943
    iput v0, p0, Lcom/metamoji/mazec/MazecIms;->mCommitStartCursor:I

    .line 1944
    const-string v0, ""

    iput-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mPrevCommitText:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1945
    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mDeletedAutoSpace:Z

    .line 1946
    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mAppendSpace:Z

    .line 1948
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->hasComposingText()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1950
    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mComposingText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1951
    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v1, v2}, Lcom/metamoji/mazec/ui/HwStrokesModel;->setStrokes(Ljava/util/List;)I

    .line 1954
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->cancelRecognition()V

    .line 1955
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->cancelConversion()V

    .line 1957
    invoke-direct {p0, v2}, Lcom/metamoji/mazec/MazecIms;->setHwrResult(Lcom/metamoji/mazec/recognizer/HwRecognitionResult;)V

    .line 1958
    invoke-direct {p0, v2}, Lcom/metamoji/mazec/MazecIms;->setCnvResult(Lcom/metamoji/mazec/converter/ConvertResult;)V

    .line 1961
    iget v1, p0, Lcom/metamoji/mazec/MazecIms;->mClientType:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 1962
    const-string v1, "com.sevenknowledge.mazec.action.mazec_finish"

    invoke-virtual {p0, v1, v2}, Lcom/metamoji/mazec/MazecIms;->commitPrivateCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1965
    :cond_1
    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mInputView:Lcom/metamoji/mazec/ui/MazecView;

    if-eqz v1, :cond_2

    .line 1966
    invoke-virtual {v1}, Lcom/metamoji/mazec/ui/MazecView;->closing()V

    .line 1969
    :cond_2
    iput-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mIsAvailable:Z

    .line 1971
    invoke-super {p0, p1}, Lcom/metamoji/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    return-void
.end method

.method public onKey(I[I)V
    .locals 0

    .line 4110
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mRefStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 4111
    iput-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mRefStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    const/16 p2, 0x18

    .line 4112
    invoke-virtual {p0, p2, p1, p1}, Lcom/metamoji/mazec/MazecIms;->fireMazecEvent(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 3021
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mInputView:Lcom/metamoji/mazec/ui/MazecView;

    if-eqz v0, :cond_0

    .line 3022
    invoke-virtual {v0, p2}, Lcom/metamoji/mazec/ui/MazecView;->onKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3033
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/metamoji/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 3043
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mOnBackListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3045
    iget-object v3, p0, Lcom/metamoji/mazec/MazecIms;->mOnBackListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/mazec/MazecIms$OnBackListener;

    invoke-interface {v3}, Lcom/metamoji/mazec/MazecIms$OnBackListener;->onBackPressed()Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    .line 3062
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/metamoji/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onNAEditorActivityExecDestory()V
    .locals 1

    .line 4318
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mInputView:Lcom/metamoji/mazec/ui/MazecView;

    if-eqz v0, :cond_0

    .line 4319
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/MazecView;->clearPopup()V

    :cond_0
    return-void
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 7

    if-nez p2, :cond_1

    .line 1672
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->restorePrefs()V

    .line 1673
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecPreferences;->getInputLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/MazecIms;->restoreLanguage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1676
    sget-boolean v0, Lcom/metamoji/mazec/BuildConfig;->SUPPORT_IN_APP_BILLING:Z

    if-eqz v0, :cond_0

    .line 1678
    invoke-static {}, Lcom/metamoji/mazec/purchase/PurchaseManager;->getInstance()Lcom/metamoji/mazec/purchase/PurchaseManager;

    move-result-object v0

    .line 1679
    invoke-virtual {v0, p0}, Lcom/metamoji/mazec/purchase/PurchaseManager;->checkPurchaseInfomation(Landroid/content/Context;)V

    .line 1684
    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/MazecIms;->parseEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    .line 1685
    iget v0, p0, Lcom/metamoji/mazec/MazecIms;->mClientType:I

    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->canInputStroke()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/metamoji/mazec/MazecIms;->hasIncompatibleStroke(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1687
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->clear()V

    const/4 v0, 0x0

    .line 1688
    iput-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mRefStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    .line 1693
    :cond_1
    iput-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 1699
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mMushRequestPkg:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 1700
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1705
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mMushResultCommitter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1706
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mMushResultCommitter2:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1707
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mMushResultCommitter2:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1710
    :cond_2
    iget v0, p0, Lcom/metamoji/mazec/MazecIms;->mClientType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    goto :goto_2

    .line 1722
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1723
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1724
    const-string/jumbo v5, "ver"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1725
    iget v5, p0, Lcom/metamoji/mazec/MazecIms;->mClientVer:I

    if-lt v5, v2, :cond_4

    if-eqz v0, :cond_4

    move v5, v2

    goto :goto_0

    :cond_4
    move v5, v1

    :goto_0
    const-string/jumbo v6, "support_reedit"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1726
    iget v5, p0, Lcom/metamoji/mazec/MazecIms;->mClientVer:I

    if-lt v5, v3, :cond_5

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    :goto_1
    const-string/jumbo v0, "support_stroke2text"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1727
    const-string v0, "com.metamoji.mazecapi.client_notify.input_start"

    invoke-direct {p0, v0, v4}, Lcom/metamoji/mazec/MazecIms;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 1729
    iget v0, p0, Lcom/metamoji/mazec/MazecIms;->mClientVer:I

    if-gtz v0, :cond_8

    .line 1730
    iput v1, p0, Lcom/metamoji/mazec/MazecIms;->mClientType:I

    goto :goto_2

    .line 1718
    :cond_6
    const-string v0, "com.sevenknowledge.mazec.action.reedit_supported"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/mazec/MazecIms;->commitPrivateCommand(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 1713
    :cond_7
    iput-boolean v1, p0, Lcom/metamoji/mazec/MazecIms;->mInReedit:Z

    .line 1736
    :cond_8
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/metamoji/inputmethodservice/InputMethodService;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    return-void
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 7

    .line 1773
    sget-object v0, Lcom/metamoji/mazec/MazecIms;->mSelf:Lcom/metamoji/mazec/MazecIms;

    if-ne v0, p0, :cond_e

    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mInputView:Lcom/metamoji/mazec/ui/MazecView;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1778
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecPreferences;->getInputMode()I

    move-result v0

    .line 1790
    iget-boolean v1, p0, Lcom/metamoji/mazec/MazecIms;->mCanInputStroke:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v1, :cond_1

    if-ne v0, v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    .line 1802
    :goto_0
    sget-object v4, Lcom/metamoji/mazec/BuildConfig;->PRODUCT_TYPE:Lcom/metamoji/mazec/BuildOption$ProductType;

    sget-object v5, Lcom/metamoji/mazec/BuildOption$ProductType;->TRIAL:Lcom/metamoji/mazec/BuildOption$ProductType;

    const/4 v6, 0x3

    if-ne v4, v5, :cond_2

    .line 1803
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->isTrialExpired()Z

    move-result v4

    if-eqz v4, :cond_2

    if-ne v0, v2, :cond_2

    move v1, v6

    .line 1809
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->getLanguage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    .line 1811
    iget-boolean v1, p0, Lcom/metamoji/mazec/MazecIms;->mCanInputStroke:Z

    if-eqz v1, :cond_3

    move v6, v3

    :cond_3
    move v1, v6

    :cond_4
    const/4 v4, 0x0

    if-eq v0, v1, :cond_5

    .line 1817
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    invoke-virtual {v0, v1, v4}, Lcom/metamoji/mazec/MazecPreferences;->setInputMode(IZ)V

    :cond_5
    const/4 v0, -0x1

    .line 1821
    iput v0, p0, Lcom/metamoji/mazec/MazecIms;->mCommitStartCursor:I

    .line 1822
    const-string v0, ""

    iput-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mPrevCommitText:Ljava/lang/String;

    .line 1823
    iput-boolean v4, p0, Lcom/metamoji/mazec/MazecIms;->mDeletedAutoSpace:Z

    .line 1824
    iput-boolean v4, p0, Lcom/metamoji/mazec/MazecIms;->mAppendSpace:Z

    .line 1829
    invoke-direct {p0}, Lcom/metamoji/mazec/MazecIms;->breakSequence()V

    .line 1832
    iput-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 1835
    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/metamoji/mazec/MazecIms;->reflectMushResult(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1836
    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/metamoji/mazec/MazecIms;->mMushResultCommitter:Ljava/lang/Runnable;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1837
    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/metamoji/mazec/MazecIms;->mMushResultCommitter2:Ljava/lang/Runnable;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1841
    :cond_6
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1842
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_7

    move v1, v3

    goto :goto_1

    :cond_7
    move v1, v4

    :goto_1
    iput-boolean v1, p0, Lcom/metamoji/mazec/MazecIms;->mIsLandscapeMode:Z

    if-eqz v1, :cond_8

    .line 1844
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->isFullscreenMode()Z

    move-result v1

    iget-object v5, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    iget-boolean v5, v5, Lcom/metamoji/mazec/MazecPreferences;->fullscreenEnabled:Z

    if-eq v1, v5, :cond_8

    .line 1845
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->updateFullscreenMode()V

    .line 1849
    :cond_8
    invoke-direct {p0}, Lcom/metamoji/mazec/MazecIms;->setupRACContextForEditorInfo()V

    .line 1851
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->getInputMode()I

    move-result v1

    invoke-direct {p0, v1, v3}, Lcom/metamoji/mazec/MazecIms;->onInputModeChanged(IZ)V

    .line 1854
    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mEditingPackageName:Ljava/lang/String;

    iget-object v5, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 1855
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v5, 0x0

    if-nez v1, :cond_b

    .line 1857
    const-string v1, "com.metamoji.mazec"

    iget-object v6, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1860
    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mEditingPackageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mLastEditingPackageName:Ljava/lang/String;

    .line 1861
    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v1}, Lcom/metamoji/mazec/ui/HwStrokesModel;->hasStrokes()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1862
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->getStrokesList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mLastEditingSrokesList:Ljava/util/List;

    goto :goto_2

    .line 1864
    :cond_9
    iput-object v5, p0, Lcom/metamoji/mazec/MazecIms;->mLastEditingSrokesList:Ljava/util/List;

    .line 1868
    :cond_a
    :goto_2
    invoke-direct {p0, v4}, Lcom/metamoji/mazec/MazecIms;->setReeditMode(Z)V

    .line 1869
    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v1}, Lcom/metamoji/mazec/ui/HwStrokesModel;->clear()V

    .line 1870
    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mEditingPackageName:Ljava/lang/String;

    .line 1872
    iget-object v4, p0, Lcom/metamoji/mazec/MazecIms;->mLastEditingPackageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1874
    iput-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mLastEditingPackageName:Ljava/lang/String;

    .line 1875
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mLastEditingSrokesList:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 1876
    invoke-direct {p0, v0}, Lcom/metamoji/mazec/MazecIms;->onAppPrivateActionSetStrokes(Ljava/util/List;)I

    .line 1877
    iput-object v5, p0, Lcom/metamoji/mazec/MazecIms;->mLastEditingSrokesList:Ljava/util/List;

    .line 1883
    :cond_b
    iget v0, p0, Lcom/metamoji/mazec/MazecIms;->mClientType:I

    if-nez v0, :cond_c

    .line 1884
    iput-object v5, p0, Lcom/metamoji/mazec/MazecIms;->mRefStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    .line 1888
    :cond_c
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mInputView:Lcom/metamoji/mazec/ui/MazecView;

    invoke-virtual {v0, p0}, Lcom/metamoji/mazec/ui/MazecView;->starting(Lcom/metamoji/mazec/MazecIms;)V

    .line 1890
    iput-boolean v3, p0, Lcom/metamoji/mazec/MazecIms;->mIsAvailable:Z

    .line 1894
    iget v0, p0, Lcom/metamoji/mazec/MazecIms;->mClientType:I

    if-ne v0, v3, :cond_d

    .line 1895
    const-string v0, "com.sevenknowledge.mazec.action.reedit_supported"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/mazec/MazecIms;->commitPrivateCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1896
    const-string v0, "com.sevenknowledge.mazec.action.mazec_start"

    invoke-virtual {p0, v0, v5}, Lcom/metamoji/mazec/MazecIms;->commitPrivateCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1899
    :cond_d
    invoke-super {p0, p1, p2}, Lcom/metamoji/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1902
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->getInputMode()I

    move-result p1

    if-ne p1, v2, :cond_e

    .line 1903
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/HwStrokesModel;->hasStrokes()Z

    move-result p1

    if-eqz p1, :cond_e

    const/16 p1, 0x35

    .line 1905
    invoke-direct {p0}, Lcom/metamoji/mazec/MazecIms;->getRecognitionParam()Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/MazecIms;->sendMessage(ILjava/lang/Object;)V

    :cond_e
    :goto_3
    return-void
.end method

.method public onUpdateSelection(IIIIII)V
    .locals 3

    .line 1993
    invoke-super/range {p0 .. p6}, Lcom/metamoji/inputmethodservice/InputMethodService;->onUpdateSelection(IIIIII)V

    move-object p1, p0

    if-gez p5, :cond_7

    if-ltz p6, :cond_0

    goto :goto_1

    .line 2008
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->hasComposingText()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2011
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->clearStrokes()V

    .line 2014
    :cond_1
    iget-boolean p2, p1, Lcom/metamoji/mazec/MazecIms;->mDeletedAutoSpace:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    if-ne p3, p4, :cond_2

    iget p2, p1, Lcom/metamoji/mazec/MazecIms;->mCommitStartCursor:I

    iget-object v1, p1, Lcom/metamoji/mazec/MazecIms;->mPrevCommitText:Ljava/lang/String;

    .line 2016
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr p2, v1

    if-ne p3, p2, :cond_2

    .line 2018
    iput-boolean v0, p1, Lcom/metamoji/mazec/MazecIms;->mDeletedAutoSpace:Z

    goto :goto_0

    .line 2019
    :cond_2
    iget p2, p1, Lcom/metamoji/mazec/MazecIms;->mCommitStartCursor:I

    if-ltz p2, :cond_6

    .line 2021
    iget v1, p1, Lcom/metamoji/mazec/MazecIms;->mComposingTextChangedLength:I

    if-eqz v1, :cond_3

    if-ne p3, p4, :cond_3

    add-int/2addr p2, v1

    if-ne p3, p2, :cond_3

    .line 2025
    iput v0, p1, Lcom/metamoji/mazec/MazecIms;->mComposingTextChangedLength:I

    goto :goto_0

    .line 2026
    :cond_3
    iget-object v1, p1, Lcom/metamoji/mazec/MazecIms;->mPrevCommitText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_4

    if-ne p3, p4, :cond_4

    iget-object v1, p1, Lcom/metamoji/mazec/MazecIms;->mPrevCommitText:Ljava/lang/String;

    .line 2028
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr p2, v1

    if-ne p3, p2, :cond_4

    .line 2030
    iput v0, p1, Lcom/metamoji/mazec/MazecIms;->mComposingTextChangedLength:I

    .line 2031
    iput-object v2, p1, Lcom/metamoji/mazec/MazecIms;->mPrevCommitText:Ljava/lang/String;

    goto :goto_0

    .line 2032
    :cond_4
    iget p2, p1, Lcom/metamoji/mazec/MazecIms;->mCommitStartCursor:I

    if-ne p3, p2, :cond_5

    if-eq p4, p2, :cond_6

    .line 2037
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->contextChanged()V

    .line 2040
    iput v0, p1, Lcom/metamoji/mazec/MazecIms;->mComposingTextChangedLength:I

    .line 2041
    iput-object v2, p1, Lcom/metamoji/mazec/MazecIms;->mPrevCommitText:Ljava/lang/String;

    .line 2042
    iput-boolean v0, p1, Lcom/metamoji/mazec/MazecIms;->mDeletedAutoSpace:Z

    .line 2043
    iput-boolean v0, p1, Lcom/metamoji/mazec/MazecIms;->mAppendSpace:Z

    .line 2046
    :cond_6
    :goto_0
    iput p3, p1, Lcom/metamoji/mazec/MazecIms;->mCommitStartCursor:I

    goto :goto_2

    .line 1997
    :cond_7
    :goto_1
    iget-object p2, p1, Lcom/metamoji/mazec/MazecIms;->mComposingText:Landroid/text/SpannableStringBuilder;

    if-eqz p2, :cond_9

    .line 1998
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_9

    if-ne p3, p6, :cond_8

    if-eq p4, p6, :cond_9

    .line 2001
    :cond_8
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 2003
    iget-object v0, p1, Lcom/metamoji/mazec/MazecIms;->mComposingText:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 2006
    :cond_9
    iput p6, p1, Lcom/metamoji/mazec/MazecIms;->mCommitStartCursor:I

    .line 2063
    :goto_2
    iget-object p2, p1, Lcom/metamoji/mazec/MazecIms;->mInputView:Lcom/metamoji/mazec/ui/MazecView;

    if-eqz p2, :cond_a

    .line 2064
    invoke-virtual {p2, p3, p4, p5, p6}, Lcom/metamoji/mazec/ui/MazecView;->onUpdateSelection(IIII)V

    :cond_a
    return-void
.end method

.method public performEditorAction()V
    .locals 2

    .line 2390
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->getEditorAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2392
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2394
    invoke-interface {v1, v0}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    :cond_0
    return-void
.end method

.method public reflectMushResult(Ljava/lang/String;)Z
    .locals 1

    .line 3144
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mMushRequestPkg:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3149
    :cond_0
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mMushResult:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 3150
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 3151
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mMushResult:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/MazecIms;->commitText(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    .line 3153
    iput-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mMushResult:Ljava/lang/String;

    .line 3154
    iput-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mMushRequestPkg:Ljava/lang/String;

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public reloadLanguageResource()V
    .locals 2

    .line 1331
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/metamoji/mazec/MazecIms$4;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/MazecIms$4;-><init>(Lcom/metamoji/mazec/MazecIms;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeMazecEventListener(Lcom/metamoji/mazec/MazecEventListener;)V
    .locals 1

    .line 3908
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mMazecEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnBackListener(Lcom/metamoji/mazec/MazecIms$OnBackListener;)V
    .locals 1

    .line 4130
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mOnBackListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestEditPenStyle(I)V
    .locals 2

    .line 3559
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3560
    const-string v1, "cur_pen_index"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3561
    const-string p1, "com.metamoji.mazecapi.client_action.edit_pen_style"

    invoke-direct {p0, p1, v0}, Lcom/metamoji/mazec/MazecIms;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    return-void
.end method

.method public resetPrefs(Lcom/metamoji/mazec/MazecPreferences;)V
    .locals 0

    .line 1171
    iput-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    .line 1172
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->disposeContext()V

    return-void
.end method

.method public resetUserData()V
    .locals 0

    .line 1176
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->disposeContext()V

    .line 1177
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->clearStrokes()V

    return-void
.end method

.method protected restoreLanguage(Ljava/lang/String;)Z
    .locals 5

    .line 1295
    invoke-static {p0}, Lcom/metamoji/mazec/LangResouceManager;->getInstance(Landroid/content/Context;)Lcom/metamoji/mazec/LangResouceManager;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 1296
    invoke-virtual {v0, p1, v1, v1}, Lcom/metamoji/mazec/LangResouceManager;->isAvailable(Ljava/lang/String;ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-nez p1, :cond_2

    .line 1301
    invoke-virtual {v0, v1, v1}, Lcom/metamoji/mazec/LangResouceManager;->getAvailableLanguages(ZZ)Ljava/util/List;

    move-result-object v2

    .line 1302
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_1

    .line 1303
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 1305
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/mazec/LangResouceManager;->checkInitialLanguages()Z

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v1

    .line 1310
    :goto_1
    invoke-virtual {p0, p1, v1}, Lcom/metamoji/mazec/MazecIms;->setLanguage(Ljava/lang/String;Z)V

    return v4
.end method

.method protected restorePrefs()V
    .locals 2

    .line 1283
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecPreferences;->load()V

    .line 1286
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecPreferences;->isLearnRecognitionEnabled()Z

    move-result v0

    const-string v1, "ja_JP"

    if-eqz v0, :cond_0

    .line 1287
    invoke-static {v1}, Lcom/metamoji/mazec/MazecConfig;->resetRecognitionImplicitLearningLimit(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1289
    invoke-static {v1, v0}, Lcom/metamoji/mazec/MazecConfig;->setRecognitionImplicitLearningLimit(Ljava/lang/String;I)V

    return-void
.end method

.method public selectAltHwrCandidate(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/recognizer/HwCandidates;",
            ">;)V"
        }
    .end annotation

    .line 3409
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHwrResult:Lcom/metamoji/mazec/recognizer/HwRecognitionResult;

    if-nez v0, :cond_0

    goto :goto_1

    .line 3413
    :cond_0
    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->setActive(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 3415
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 3416
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3419
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/mazec/recognizer/HwCandidates;

    invoke-virtual {v3}, Lcom/metamoji/mazec/recognizer/HwCandidates;->clone()Lcom/metamoji/mazec/recognizer/HwCandidates;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x3d

    .line 3421
    invoke-direct {p0, p1, v1}, Lcom/metamoji/mazec/MazecIms;->sendMessage(ILjava/lang/Object;)V

    .line 3422
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mHwrResult:Lcom/metamoji/mazec/recognizer/HwRecognitionResult;

    invoke-virtual {p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->getTopCandidateString()Ljava/lang/String;

    move-result-object p1

    .line 3423
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 3424
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHwrResult:Lcom/metamoji/mazec/recognizer/HwRecognitionResult;

    invoke-direct {p0, p1, v0}, Lcom/metamoji/mazec/MazecIms;->createConversionParam(Ljava/lang/String;Lcom/metamoji/mazec/recognizer/HwRecognitionResult;)[Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x66

    invoke-direct {p0, v0, p1}, Lcom/metamoji/mazec/MazecIms;->sendMessage(ILjava/lang/Object;)V

    .line 3426
    :cond_2
    invoke-direct {p0}, Lcom/metamoji/mazec/MazecIms;->fireHwRecognitionResultUpdateEvnet()V

    :cond_3
    :goto_1
    return-void
.end method

.method public sendKeyEvent(II)V
    .locals 13

    .line 2941
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2943
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2944
    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move v7, p1

    move v9, p2

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_0
    return-void
.end method

.method public sendMessage(ILjava/lang/Object;Lcom/metamoji/mazec/util/MessageHandler;)V
    .locals 8

    .line 3993
    invoke-static {}, Lcom/metamoji/mazec/BackgroundTaskHandler;->getHandler()Lcom/metamoji/mazec/BackgroundTaskHandler;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3994
    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mRacContext:Lcom/metamoji/mazec/RACContext;

    if-nez v1, :cond_0

    goto :goto_1

    .line 3998
    :cond_0
    new-instance v2, Lcom/metamoji/mazec/util/MessageParam;

    iget-object v3, p0, Lcom/metamoji/mazec/MazecIms;->mRacContext:Lcom/metamoji/mazec/RACContext;

    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v1}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getLastStrokeRelatedActionTime()J

    move-result-wide v6

    move-object v5, p2

    move-object v4, p3

    invoke-direct/range {v2 .. v7}, Lcom/metamoji/mazec/util/MessageParam;-><init>(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageHandler;Ljava/lang/Object;J)V

    const/16 p2, 0x35

    if-ne p1, p2, :cond_1

    .line 4001
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->cancelRecognition()V

    .line 4002
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->cancelConversion()V

    .line 4003
    iput-object v2, p0, Lcom/metamoji/mazec/MazecIms;->mLastRecogReq:Lcom/metamoji/mazec/util/MessageParam;

    .line 4004
    move-object p2, v5

    check-cast p2, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;

    invoke-virtual {p2}, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->execContext()Lcom/metamoji/mazec/RACExecContext;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/mazec/MazecIms;->mLastRecogReqCtx:Lcom/metamoji/mazec/RACExecContext;

    goto :goto_0

    :cond_1
    const/16 p2, 0x66

    if-eq p1, p2, :cond_2

    const/16 p3, 0x68

    if-ne p1, p3, :cond_3

    .line 4006
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->cancelConversion()V

    .line 4007
    iput-object v2, p0, Lcom/metamoji/mazec/MazecIms;->mLastConvReq:Lcom/metamoji/mazec/util/MessageParam;

    if-ne p1, p2, :cond_3

    .line 4009
    move-object p2, v5

    check-cast p2, [Ljava/lang/Object;

    .line 4010
    array-length p3, p2

    const/4 v1, 0x2

    if-le p3, v1, :cond_3

    .line 4011
    aget-object p2, p2, v1

    check-cast p2, Lcom/metamoji/mazec/RACExecContext;

    iput-object p2, p0, Lcom/metamoji/mazec/MazecIms;->mLastConvReqCtx:Lcom/metamoji/mazec/RACExecContext;

    .line 4016
    :cond_3
    :goto_0
    invoke-virtual {v0, p1, v2}, Lcom/metamoji/mazec/BackgroundTaskHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/BackgroundTaskHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public setComposingText(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setCurrentPenIndex(I)V
    .locals 3

    .line 1202
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mPenStyles:Ljava/util/List;

    if-eqz v0, :cond_3

    if-ltz p1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 1203
    iget v0, p0, Lcom/metamoji/mazec/MazecIms;->mCurPenIndex:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1205
    iput p1, p0, Lcom/metamoji/mazec/MazecIms;->mCurPenIndex:I

    .line 1206
    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mInputView:Lcom/metamoji/mazec/ui/MazecView;

    if-eqz v1, :cond_1

    .line 1207
    iget-object v2, p0, Lcom/metamoji/mazec/MazecIms;->mPenStyles:Ljava/util/List;

    invoke-virtual {v1, v2, p1}, Lcom/metamoji/mazec/ui/MazecView;->onPenStyleChanged(Ljava/util/List;I)V

    .line 1211
    :cond_1
    iget v1, p0, Lcom/metamoji/mazec/MazecIms;->mClientType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 1213
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1214
    const-string v2, "cur_pen_index"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v0, :cond_2

    .line 1216
    const-string p1, "com.metamoji.mazecapi.client_notify.properties_changed"

    goto :goto_1

    .line 1217
    :cond_2
    const-string p1, "com.metamoji.mazecapi.client_action.edit_pen_style"

    .line 1215
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/metamoji/mazec/MazecIms;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    :cond_3
    return-void
.end method

.method public setEnableAutoSpace(Z)V
    .locals 1

    .line 711
    iget-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mIsLatinLang:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 712
    iput-boolean p1, p0, Lcom/metamoji/mazec/MazecIms;->mEnableAutoSpace:Z

    return-void

    .line 714
    :cond_0
    iput-boolean p1, p0, Lcom/metamoji/mazec/MazecIms;->mEnableAutoSpace:Z

    return-void
.end method

.method public setInputMode(I)V
    .locals 3

    .line 1061
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->getInputMode()I

    move-result v0

    if-ne v0, p1, :cond_0

    goto :goto_2

    .line 1065
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mIsAvailable:Z

    if-nez v0, :cond_1

    .line 1066
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/MazecPreferences;->setInputMode(I)V

    return-void

    .line 1070
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->isTrialExpired()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1071
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mInputView:Lcom/metamoji/mazec/ui/MazecView;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/MazecView;->showTrialExpiredAlert()V

    return-void

    :cond_2
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_3

    goto :goto_0

    .line 1083
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->getLanguage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_2

    .line 1077
    :cond_4
    iget-boolean v2, p0, Lcom/metamoji/mazec/MazecIms;->mCanInputStroke:Z

    if-nez v2, :cond_5

    goto :goto_2

    .line 1093
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/metamoji/mazec/MazecIms;->breakSequence()V

    .line 1094
    iget-object v2, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v2}, Lcom/metamoji/mazec/ui/HwStrokesModel;->updateLastStrokeRelatedActionTime()J

    .line 1096
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->isInReedit()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x3

    if-ne p1, v2, :cond_6

    goto :goto_2

    .line 1100
    :cond_6
    iget-object v2, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    invoke-virtual {v2, p1}, Lcom/metamoji/mazec/MazecPreferences;->setInputModeInReedit(I)V

    goto :goto_1

    .line 1102
    :cond_7
    iget-object v2, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    invoke-virtual {v2, p1}, Lcom/metamoji/mazec/MazecPreferences;->setInputMode(I)V

    .line 1105
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/metamoji/mazec/MazecIms;->onInputModeChanged(IZ)V

    if-ne p1, v0, :cond_8

    const/4 p1, 0x0

    .line 1108
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/MazecIms;->recognize(I)V

    :cond_8
    :goto_2
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 616
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/mazec/MazecIms;->setLanguage(Ljava/lang/String;Z)V

    return-void
.end method

.method protected setLanguage(Ljava/lang/String;Z)V
    .locals 4

    if-nez p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 625
    :cond_0
    iget-object p2, p0, Lcom/metamoji/mazec/MazecIms;->mLang:Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 629
    :cond_1
    invoke-static {p0}, Lcom/metamoji/mazec/LangResouceManager;->getInstance(Landroid/content/Context;)Lcom/metamoji/mazec/LangResouceManager;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0, v0}, Lcom/metamoji/mazec/LangResouceManager;->isAvailable(Ljava/lang/String;ZZ)Z

    move-result p2

    if-nez p2, :cond_2

    :goto_0
    return-void

    .line 634
    :cond_2
    iput-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mLang:Ljava/lang/String;

    .line 635
    invoke-static {p1}, Lcom/metamoji/mazec/util/LocaleUtil;->isLatinLanguage(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/metamoji/mazec/MazecIms;->mIsLatinLang:Z

    .line 637
    invoke-virtual {p0, p2}, Lcom/metamoji/mazec/MazecIms;->setEnableAutoSpace(Z)V

    if-eqz p1, :cond_3

    .line 645
    iget-object p2, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    invoke-virtual {p2}, Lcom/metamoji/mazec/MazecPreferences;->getInputLanguage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 646
    iget-object p2, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    invoke-virtual {p2, p1}, Lcom/metamoji/mazec/MazecPreferences;->setInputLanguage(Ljava/lang/String;)V

    .line 649
    :cond_3
    iget-object p2, p0, Lcom/metamoji/mazec/MazecIms;->mRacContext:Lcom/metamoji/mazec/RACContext;

    const/4 v0, 0x0

    if-nez p2, :cond_4

    if-eqz p1, :cond_4

    .line 650
    invoke-static {}, Lcom/metamoji/mazec/BackgroundTaskHandler;->getHandler()Lcom/metamoji/mazec/BackgroundTaskHandler;

    move-result-object p2

    .line 651
    new-instance v1, Lcom/metamoji/mazec/util/MessageParam$ContextConfig;

    iget-object v2, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    invoke-virtual {v2}, Lcom/metamoji/mazec/MazecPreferences;->getKanjiRecognitionMode()I

    move-result v2

    iget-object v3, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    invoke-virtual {v3}, Lcom/metamoji/mazec/MazecPreferences;->getSchoolYear()I

    move-result v3

    invoke-direct {v1, p1, v2, v3}, Lcom/metamoji/mazec/util/MessageParam$ContextConfig;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p2, v0, v1}, Lcom/metamoji/mazec/BackgroundTaskHandler;->createContext(Lcom/metamoji/mazec/util/MessageHandler;Lcom/metamoji/mazec/util/MessageParam$ContextConfig;)Lcom/metamoji/mazec/RACContext;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/mazec/MazecIms;->mRacContext:Lcom/metamoji/mazec/RACContext;

    .line 654
    :cond_4
    iget-object p2, p0, Lcom/metamoji/mazec/MazecIms;->mRacContext:Lcom/metamoji/mazec/RACContext;

    if-eqz p2, :cond_5

    const/16 p2, 0x3a

    .line 655
    invoke-direct {p0, p2, p1}, Lcom/metamoji/mazec/MazecIms;->sendMessage(ILjava/lang/Object;)V

    .line 656
    invoke-direct {p0}, Lcom/metamoji/mazec/MazecIms;->setupRACContextForEditorInfo()V

    .line 659
    :cond_5
    iget-object p2, p0, Lcom/metamoji/mazec/MazecIms;->mStrokes2Text:Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;

    if-eqz p2, :cond_6

    .line 660
    invoke-virtual {p2, p1}, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->setLanguage(Ljava/lang/String;)V

    .line 663
    :cond_6
    iget-object p2, p0, Lcom/metamoji/mazec/MazecIms;->mLangChangedEventShooter:Lcom/metamoji/mazec/MazecIms$EventShooter;

    if-nez p2, :cond_7

    .line 664
    new-instance p2, Lcom/metamoji/mazec/MazecIms$3;

    invoke-direct {p2, p0}, Lcom/metamoji/mazec/MazecIms$3;-><init>(Lcom/metamoji/mazec/MazecIms;)V

    iput-object p2, p0, Lcom/metamoji/mazec/MazecIms;->mLangChangedEventShooter:Lcom/metamoji/mazec/MazecIms$EventShooter;

    .line 672
    :cond_7
    iget-object p2, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mLang:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/metamoji/mazec/MazecPreferences;->getFilter(Ljava/lang/String;)I

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_8

    .line 674
    iget-object v2, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    iget-object v3, p0, Lcom/metamoji/mazec/MazecIms;->mLang:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v1}, Lcom/metamoji/mazec/MazecPreferences;->setFilter(Ljava/lang/String;IZ)V

    .line 675
    invoke-virtual {p0, p2}, Lcom/metamoji/mazec/MazecIms;->setRecognizeFilter(I)V

    .line 677
    :cond_8
    iget-object p2, p0, Lcom/metamoji/mazec/MazecIms;->mLang:Ljava/lang/String;

    invoke-static {p2}, Lcom/metamoji/mazec/MazecConfig;->isSegmentationMarkerAvailable(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 678
    new-instance p2, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;

    invoke-direct {p2}, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;-><init>()V

    iput-object p2, p0, Lcom/metamoji/mazec/MazecIms;->mRecogSegmentation:Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;

    goto :goto_1

    .line 680
    :cond_9
    iput-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mRecogSegmentation:Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;

    .line 683
    :goto_1
    sput-object v0, Lcom/metamoji/mazec/MazecIms;->_classRoomLearnedKanjiCharacters:Ljava/lang/String;

    .line 684
    iget-object p2, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    invoke-virtual {p2}, Lcom/metamoji/mazec/MazecPreferences;->getSchoolYear()I

    move-result p2

    sget v0, Lcom/metamoji/mazec/RACConfig;->SCHOOL_YEAR_UNSPECIFIED:I

    if-eq p2, v0, :cond_a

    .line 687
    new-instance p2, Lcom/metamoji/mazec/util/MessageParam$ContextConfig;

    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecPreferences;->getKanjiRecognitionMode()I

    move-result v0

    iget-object v2, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    invoke-virtual {v2}, Lcom/metamoji/mazec/MazecPreferences;->getSchoolYear()I

    move-result v2

    invoke-direct {p2, p1, v0, v2}, Lcom/metamoji/mazec/util/MessageParam$ContextConfig;-><init>(Ljava/lang/String;II)V

    const/16 p1, 0x47

    .line 688
    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/MazecIms;->sendMessage(ILjava/lang/Object;)V

    .line 692
    :cond_a
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mLangChangedEventShooter:Lcom/metamoji/mazec/MazecIms$EventShooter;

    invoke-virtual {p0, p0, p1}, Lcom/metamoji/mazec/MazecIms;->fireEvent(Ljava/lang/Object;Lcom/metamoji/mazec/MazecIms$EventShooter;)V

    .line 694
    invoke-direct {p0, v1}, Lcom/metamoji/mazec/MazecIms;->rerecognize(I)V

    return-void
.end method

.method public setLineColor(I)V
    .locals 2

    .line 3323
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    iget v0, v0, Lcom/metamoji/mazec/MazecPreferences;->lineColor:I

    if-ne p1, v0, :cond_0

    return-void

    .line 3327
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    iput p1, v0, Lcom/metamoji/mazec/MazecPreferences;->lineColor:I

    .line 3329
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3330
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "selected_color"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3332
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mLineColorChangedEventShooter:Lcom/metamoji/mazec/MazecIms$EventShooter;

    if-nez p1, :cond_1

    .line 3333
    new-instance p1, Lcom/metamoji/mazec/MazecIms$8;

    invoke-direct {p1, p0}, Lcom/metamoji/mazec/MazecIms$8;-><init>(Lcom/metamoji/mazec/MazecIms;)V

    iput-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mLineColorChangedEventShooter:Lcom/metamoji/mazec/MazecIms$EventShooter;

    .line 3340
    :cond_1
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mLineColorChangedEventShooter:Lcom/metamoji/mazec/MazecIms$EventShooter;

    invoke-virtual {p0, p0, p1}, Lcom/metamoji/mazec/MazecIms;->fireEvent(Ljava/lang/Object;Lcom/metamoji/mazec/MazecIms$EventShooter;)V

    return-void
.end method

.method public setLineWidthType(I)V
    .locals 2

    .line 3353
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    iget v0, v0, Lcom/metamoji/mazec/MazecPreferences;->lineWidthType:I

    if-ne p1, v0, :cond_0

    return-void

    .line 3357
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    iput p1, v0, Lcom/metamoji/mazec/MazecPreferences;->lineWidthType:I

    .line 3359
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3360
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "selected_lwt"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3362
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mLineWidthTypeChangedEventShooter:Lcom/metamoji/mazec/MazecIms$EventShooter;

    if-nez p1, :cond_1

    .line 3363
    new-instance p1, Lcom/metamoji/mazec/MazecIms$9;

    invoke-direct {p1, p0}, Lcom/metamoji/mazec/MazecIms$9;-><init>(Lcom/metamoji/mazec/MazecIms;)V

    iput-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mLineWidthTypeChangedEventShooter:Lcom/metamoji/mazec/MazecIms$EventShooter;

    .line 3371
    :cond_1
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mLineWidthTypeChangedEventShooter:Lcom/metamoji/mazec/MazecIms$EventShooter;

    invoke-virtual {p0, p0, p1}, Lcom/metamoji/mazec/MazecIms;->fireEvent(Ljava/lang/Object;Lcom/metamoji/mazec/MazecIms$EventShooter;)V

    return-void
.end method

.method public setMushResult(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    .line 3133
    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mMushResult:Ljava/lang/String;

    .line 3134
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mMushResultCommitter:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setRecognizeFilter(I)V
    .locals 2

    .line 3378
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mLang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/MazecPreferences;->getFilter(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 3382
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mPrefs:Lcom/metamoji/mazec/MazecPreferences;

    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms;->mLang:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/mazec/MazecPreferences;->setFilter(Ljava/lang/String;I)V

    .line 3383
    iget-boolean v0, p0, Lcom/metamoji/mazec/MazecIms;->mIsAvailable:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x3b

    .line 3384
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/metamoji/mazec/MazecIms;->sendMessage(ILjava/lang/Object;)V

    .line 3386
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mFilterChangedEventShooter:Lcom/metamoji/mazec/MazecIms$EventShooter;

    if-nez p1, :cond_1

    .line 3387
    new-instance p1, Lcom/metamoji/mazec/MazecIms$10;

    invoke-direct {p1, p0}, Lcom/metamoji/mazec/MazecIms$10;-><init>(Lcom/metamoji/mazec/MazecIms;)V

    iput-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mFilterChangedEventShooter:Lcom/metamoji/mazec/MazecIms$EventShooter;

    .line 3394
    :cond_1
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms;->mFilterChangedEventShooter:Lcom/metamoji/mazec/MazecIms$EventShooter;

    invoke-virtual {p0, p0, p1}, Lcom/metamoji/mazec/MazecIms;->fireEvent(Ljava/lang/Object;Lcom/metamoji/mazec/MazecIms$EventShooter;)V

    const/4 p1, 0x0

    .line 3396
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/MazecIms;->rerecognize(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setShowAdv7notes(Z)V
    .locals 2

    .line 2891
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2892
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_show_advertisement"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public showSettings()V
    .locals 0

    .line 2847
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->showSettingsCore()V

    return-void
.end method

.method public showSettingsCore()V
    .locals 1

    const/4 v0, 0x0

    .line 2852
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/MazecIms;->requestHideSelf(I)V

    .line 2853
    invoke-static {p0}, Lcom/metamoji/mazec/MazecIms;->showSettingsCore(Landroid/content/Context;)V

    return-void
.end method

.method public skipToNextReeditingTarget()V
    .locals 3

    .line 3438
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mHwStrokesModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->clear()V

    .line 3439
    iget v0, p0, Lcom/metamoji/mazec/MazecIms;->mClientType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 3445
    :cond_0
    const-string v0, "com.metamoji.mazecapi.client_action.skip_reedit"

    invoke-direct {p0, v0, v2}, Lcom/metamoji/mazec/MazecIms;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    return-void

    .line 3441
    :cond_1
    const-string v0, "com.sevenknowledge.mazec.action.skip_reedit"

    invoke-virtual {p0, v0, v2}, Lcom/metamoji/mazec/MazecIms;->commitPrivateCommand(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public startMushroom(Ljava/lang/String;)V
    .locals 2

    .line 3098
    invoke-static {p0}, Lcom/metamoji/mazec/MushProxyActivity;->hasMushIntents(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3102
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_1

    .line 3107
    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mMushRequestPkg:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3108
    iput-object v0, p0, Lcom/metamoji/mazec/MazecIms;->mMushResult:Ljava/lang/String;

    .line 3110
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3112
    const-class v1, Lcom/metamoji/mazec/MushProxyActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3113
    const-string v1, "replace_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x30000000

    .line 3114
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 3116
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/MazecIms;->requestHideSelf(I)V

    .line 3117
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/MazecIms;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public string2filter(Ljava/lang/String;)I
    .locals 1

    .line 1539
    const-string v0, "all"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1543
    :cond_0
    const-string v0, "kanji"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0x8

    return p1

    .line 1547
    :cond_1
    const-string v0, "hiragana"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 1551
    :cond_2
    const-string v0, "katakana"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x2

    return p1

    .line 1555
    :cond_3
    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x3

    return p1

    .line 1559
    :cond_4
    const-string/jumbo v0, "uppercase"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 p1, 0x9

    return p1

    .line 1563
    :cond_5
    const-string v0, "lowercase"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 p1, 0xa

    return p1

    .line 1567
    :cond_6
    const-string v0, "number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p1, 0x4

    return p1

    .line 1571
    :cond_7
    const-string v0, "alnum"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 p1, 0xb

    return p1

    .line 1575
    :cond_8
    const-string/jumbo v0, "symbol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x7

    return p1

    .line 1579
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "!!!INVALID FILTER!!!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public string2inputMode(Ljava/lang/String;)I
    .locals 1

    .line 1507
    const-string/jumbo v0, "stroke"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1511
    :cond_0
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    return p1

    .line 1515
    :cond_1
    const-string v0, "keyboard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    return p1

    .line 1519
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "!!!INVALID INPUT MODE!!!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public switchInputMethod()V
    .locals 1

    .line 2923
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2926
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/MazecIms;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2927
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
