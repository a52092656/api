# classes3.dex

.class public Lcom/tdo/showbox/http/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static DEFAULT_KEYS:Lcom/tdo/showbox/http/CipherKeys; = null

.field private static final TAG:Ljava/lang/String; = "HttpUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    invoke-static {}, Lcom/tdo/showbox/http/CipherKeys;->getDefaultKeys()Lcom/tdo/showbox/http/CipherKeys;

    move-result-object v0

    sput-object v0, Lcom/tdo/showbox/http/HttpUtils;->DEFAULT_KEYS:Lcom/tdo/showbox/http/CipherKeys;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeBody(Ljava/lang/String;Lcom/tdo/showbox/http/CipherKeys;)Ljava/lang/String;
    .registers 10

    const-string v0, "verify"

    const-string v1, "encrypt_data"

    const-string v2, "app_key"

    const-string v3, "utf-8"

    const-string v4, "HttpUtils"

    const/4 v5, 0x0

    if-eqz p0, :cond_9b

    .line 169
    :try_start_d
    invoke-static {p0, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v6, 0x2

    .line 171
    invoke-static {p0, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 172
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 173
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decodeBody:"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/tdo/showbox/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static {v6}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    .line 177
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    .line 178
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    .line 179
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v3, :cond_91

    if-eqz v6, :cond_91

    if-nez v7, :cond_46

    goto :goto_91

    .line 186
    :cond_46
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tdo/showbox/http/CipherKeys;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tdo/showbox/http/HttpUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_78

    const-string p0, "decodeBody: 校验失败！"

    .line 190
    invoke-static {v4, p0}, Lcom/tdo/showbox/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 195
    :cond_78
    invoke-static {v1, p1}, Lcom/tdo/showbox/utils/CipherUtils;->decrypt(Ljava/lang/String;Lcom/tdo/showbox/http/CipherKeys;)Ljava/lang/String;

    move-result-object p0

    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "decodeBody: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/tdo/showbox/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_91
    :goto_91
    const-string p0, "decodeBody: 数据错误！"

    .line 181
    invoke-static {v4, p0}, Lcom/tdo/showbox/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_96} :catch_97

    return-object v5

    :catch_97
    move-exception p0

    .line 200
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9b
    return-object v5
.end method

.method public static encodeBody(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 116
    sget-object v0, Lcom/tdo/showbox/http/HttpUtils;->DEFAULT_KEYS:Lcom/tdo/showbox/http/CipherKeys;

    invoke-static {p0, v0}, Lcom/tdo/showbox/http/HttpUtils;->encodeBody(Ljava/lang/String;Lcom/tdo/showbox/http/CipherKeys;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeBody(Ljava/lang/String;Lcom/tdo/showbox/http/CipherKeys;)Ljava/lang/String;
    .registers 6

    if-eqz p0, :cond_93

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "before encrypt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpUtils"

    invoke-static {v1, v0}, Lcom/tdo/showbox/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {p0, p1}, Lcom/tdo/showbox/utils/CipherUtils;->encrypt(Ljava/lang/String;Lcom/tdo/showbox/http/CipherKeys;)Ljava/lang/String;

    move-result-object p0

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after encrypt:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tdo/showbox/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Lcom/tdo/showbox/http/CipherKeys;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tdo/showbox/http/CipherKeys;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/tdo/showbox/http/HttpUtils;->getVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-virtual {p1}, Lcom/tdo/showbox/http/CipherKeys;->getAppKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tdo/showbox/http/HttpUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 135
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v3, "app_key"

    .line 136
    invoke-virtual {v2, v3, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "encrypt_data"

    .line 137
    invoke-virtual {v2, p1, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "verify"

    .line 138
    invoke-virtual {v2, p0, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p0

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "new body json:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tdo/showbox/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    .line 144
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    .line 153
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "after encoded:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/tdo/showbox/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_93
    const/4 p0, 0x0

    return-object p0
.end method

.method static formToJson(Ljava/lang/String;)Ljava/lang/String;
    .registers 16

    if-eqz p0, :cond_d8

    const-string v0, "&"

    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 60
    array-length v0, p0

    if-lez v0, :cond_d8

    .line 61
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 65
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_16
    const-string v7, "lang"

    const-string v8, "app_version"

    const-string v9, "appid"

    if-ge v3, v1, :cond_be

    aget-object v10, p0, v3

    const-string v11, "="

    .line 66
    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 67
    array-length v11, v10

    const/4 v12, 0x2

    const-string v13, ""

    const/4 v14, 0x1

    if-ne v11, v12, :cond_b2

    .line 68
    aget-object v11, v10, v2

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v11, "tids"

    const-string v12, "mids"

    if-eqz v9, :cond_3f

    .line 70
    sget-object v4, Lcom/tdo/showbox/app/App;->packageName:Ljava/lang/String;

    aput-object v4, v10, v14

    const/4 v4, 0x1

    goto :goto_9a

    .line 71
    :cond_3f
    aget-object v9, v10, v2

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4d

    .line 73
    sget-object v5, Lcom/tdo/showbox/app/App;->versionName:Ljava/lang/String;

    aput-object v5, v10, v14

    const/4 v5, 0x1

    goto :goto_9a

    .line 74
    :cond_4d
    aget-object v8, v10, v2

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_69

    .line 75
    aget-object v7, v10, v14

    invoke-static {v7}, Lcom/alibaba/fastjson/JSONObject;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/fastjson/JSONObject;

    const-string v8, "mid"

    .line 76
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v7

    .line 77
    aget-object v8, v10, v2

    invoke-virtual {v0, v8, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9a

    .line 78
    :cond_69
    aget-object v8, v10, v2

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_85

    .line 79
    aget-object v7, v10, v14

    invoke-static {v7}, Lcom/alibaba/fastjson/JSONObject;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/fastjson/JSONObject;

    const-string v8, "tid"

    .line 80
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v7

    .line 81
    aget-object v8, v10, v2

    invoke-virtual {v0, v8, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9a

    .line 82
    :cond_85
    aget-object v8, v10, v2

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9a

    .line 84
    aget-object v6, v10, v14

    const-string v7, "default"

    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_99

    .line 85
    aput-object v13, v10, v14

    :cond_99
    const/4 v6, 0x1

    .line 88
    :cond_9a
    :goto_9a
    aget-object v7, v10, v2

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_ba

    aget-object v7, v10, v2

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_ba

    .line 89
    aget-object v7, v10, v2

    aget-object v8, v10, v14

    invoke-virtual {v0, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ba

    .line 91
    :cond_b2
    array-length v7, v10

    if-ne v7, v14, :cond_ba

    .line 92
    aget-object v7, v10, v2

    invoke-virtual {v0, v7, v13}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ba
    :goto_ba
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_16

    :cond_be
    if-nez v4, :cond_c5

    .line 97
    sget-object p0, Lcom/tdo/showbox/app/App;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v9, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c5
    if-nez v5, :cond_cc

    .line 101
    sget-object p0, Lcom/tdo/showbox/app/App;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v8, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_cc
    if-nez v6, :cond_d3

    .line 105
    sget-object p0, Lcom/tdo/showbox/app/App;->deviceLang:Ljava/lang/String;

    invoke-virtual {v0, v7, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_d3
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d8
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_1d

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/tdo/showbox/http/HttpUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 46
    invoke-static {p0}, Lcom/tdo/showbox/http/HttpUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 34
    invoke-static {p0}, Lcom/tdo/showbox/utils/MD5Util;->md5(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/tdo/showbox/utils/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/Class;)Lcom/tdo/showbox/http/BaseResponse;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/tdo/showbox/http/BaseResponse<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "哇卡卡卡"

    const/4 v1, 0x0

    if-eqz p0, :cond_13f

    .line 218
    :try_start_5
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 228
    invoke-static {p0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    .line 229
    new-instance v2, Lcom/tdo/showbox/http/BaseResponse;

    invoke-direct {v2}, Lcom/tdo/showbox/http/BaseResponse;-><init>()V

    const-string v3, "code"

    .line 230
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v3

    .line 231
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 232
    iput v3, v2, Lcom/tdo/showbox/http/BaseResponse;->success:I
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3e} :catch_13b

    const-string v0, "messagestr"

    const-string v4, "Message"

    const-string v5, "未知错误"

    const/4 v6, 0x1

    const-string v7, "msg"

    if-nez v3, :cond_71

    .line 234
    :try_start_49
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_6e

    .line 236
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_5a

    .line 237
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tdo/showbox/http/BaseResponse;->msg:Ljava/lang/String;

    goto :goto_ab

    .line 238
    :cond_5a
    instance-of v7, v8, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v7, :cond_6b

    .line 239
    check-cast v8, Lcom/alibaba/fastjson/JSONObject;

    .line 240
    invoke-virtual {v8, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 241
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tdo/showbox/http/BaseResponse;->msg:Ljava/lang/String;

    goto :goto_ab

    .line 243
    :cond_6b
    iput-object v5, v2, Lcom/tdo/showbox/http/BaseResponse;->msg:Ljava/lang/String;

    goto :goto_ab

    .line 246
    :cond_6e
    iput-object v5, v2, Lcom/tdo/showbox/http/BaseResponse;->msg:Ljava/lang/String;

    goto :goto_ab

    :cond_71
    if-ne v3, v6, :cond_9f

    .line 249
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_77} :catch_13b

    const-string v8, "请求成功"

    if-eqz v5, :cond_9c

    .line 251
    :try_start_7b
    instance-of v9, v5, Ljava/lang/String;

    if-eqz v9, :cond_86

    .line 252
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tdo/showbox/http/BaseResponse;->msg:Ljava/lang/String;

    goto :goto_ab

    .line 253
    :cond_86
    instance-of v5, v5, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v5, :cond_99

    .line 254
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 255
    invoke-virtual {v5, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 256
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tdo/showbox/http/BaseResponse;->msg:Ljava/lang/String;

    goto :goto_ab

    .line 258
    :cond_99
    iput-object v8, v2, Lcom/tdo/showbox/http/BaseResponse;->msg:Ljava/lang/String;

    goto :goto_ab

    .line 261
    :cond_9c
    iput-object v8, v2, Lcom/tdo/showbox/http/BaseResponse;->msg:Ljava/lang/String;

    goto :goto_ab

    .line 264
    :cond_9f
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tdo/showbox/http/BaseResponse;->msg:Ljava/lang/String;

    .line 265
    iget-object v0, v2, Lcom/tdo/showbox/http/BaseResponse;->msg:Ljava/lang/String;

    if-nez v0, :cond_ab

    .line 266
    iput-object v5, v2, Lcom/tdo/showbox/http/BaseResponse;->msg:Ljava/lang/String;

    :cond_ab
    :goto_ab
    const-string v0, "data"

    .line 270
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b9

    const-string v0, "dataList"

    .line 272
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_b9
    const/16 p0, 0x3e8

    if-eqz v0, :cond_12d

    .line 276
    instance-of v4, v0, Lcom/alibaba/fastjson/JSONObject;

    const/16 v5, 0x3ea

    const/16 v7, 0x7d2

    if-eqz v4, :cond_e7

    .line 278
    move-object v4, v0

    check-cast v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_da

    if-ne v3, v6, :cond_d5

    .line 280
    iput v5, v2, Lcom/tdo/showbox/http/BaseResponse;->code:I

    .line 281
    iput-object v1, v2, Lcom/tdo/showbox/http/BaseResponse;->data:Ljava/lang/Object;

    goto :goto_e4

    .line 283
    :cond_d5
    iput v7, v2, Lcom/tdo/showbox/http/BaseResponse;->code:I

    .line 284
    iput-object v1, v2, Lcom/tdo/showbox/http/BaseResponse;->data:Ljava/lang/Object;

    goto :goto_e4

    .line 287
    :cond_da
    iput p0, v2, Lcom/tdo/showbox/http/BaseResponse;->code:I

    .line 288
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-static {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->toJavaObject(Lcom/alibaba/fastjson/JSON;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v2, Lcom/tdo/showbox/http/BaseResponse;->data:Ljava/lang/Object;

    .line 290
    :goto_e4
    iput-object v1, v2, Lcom/tdo/showbox/http/BaseResponse;->list:Ljava/util/List;

    goto :goto_13a

    .line 291
    :cond_e7
    instance-of v4, v0, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v4, :cond_119

    .line 293
    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    .line 294
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_109

    if-ne v3, v6, :cond_102

    const/16 p0, 0x3e9

    .line 296
    iput p0, v2, Lcom/tdo/showbox/http/BaseResponse;->code:I

    .line 297
    iput-object v1, v2, Lcom/tdo/showbox/http/BaseResponse;->data:Ljava/lang/Object;

    .line 298
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONArray;->toJavaList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    iput-object p0, v2, Lcom/tdo/showbox/http/BaseResponse;->list:Ljava/util/List;

    goto :goto_13a

    .line 300
    :cond_102
    iput v7, v2, Lcom/tdo/showbox/http/BaseResponse;->code:I

    .line 301
    iput-object v1, v2, Lcom/tdo/showbox/http/BaseResponse;->data:Ljava/lang/Object;

    .line 302
    iput-object v1, v2, Lcom/tdo/showbox/http/BaseResponse;->list:Ljava/util/List;

    goto :goto_13a

    :cond_109
    if-ne v3, v6, :cond_112

    .line 306
    iput v5, v2, Lcom/tdo/showbox/http/BaseResponse;->code:I

    .line 307
    iput-object v1, v2, Lcom/tdo/showbox/http/BaseResponse;->data:Ljava/lang/Object;

    .line 308
    iput-object v1, v2, Lcom/tdo/showbox/http/BaseResponse;->list:Ljava/util/List;

    goto :goto_13a

    .line 310
    :cond_112
    iput v7, v2, Lcom/tdo/showbox/http/BaseResponse;->code:I

    .line 311
    iput-object v1, v2, Lcom/tdo/showbox/http/BaseResponse;->data:Ljava/lang/Object;

    .line 312
    iput-object v1, v2, Lcom/tdo/showbox/http/BaseResponse;->list:Ljava/util/List;

    goto :goto_13a

    .line 315
    :cond_119
    instance-of p1, v0, Ljava/lang/String;

    if-eqz p1, :cond_124

    .line 316
    iput p0, v2, Lcom/tdo/showbox/http/BaseResponse;->code:I

    .line 317
    iput-object v0, v2, Lcom/tdo/showbox/http/BaseResponse;->data:Ljava/lang/Object;

    .line 318
    iput-object v1, v2, Lcom/tdo/showbox/http/BaseResponse;->list:Ljava/util/List;

    goto :goto_13a

    :cond_124
    const/16 p0, 0x7d0

    .line 320
    iput p0, v2, Lcom/tdo/showbox/http/BaseResponse;->code:I

    .line 321
    iput-object v1, v2, Lcom/tdo/showbox/http/BaseResponse;->data:Ljava/lang/Object;

    .line 322
    iput-object v1, v2, Lcom/tdo/showbox/http/BaseResponse;->list:Ljava/util/List;

    goto :goto_13a

    :cond_12d
    if-eq v3, v6, :cond_134

    const/16 p0, 0x7d1

    .line 326
    iput p0, v2, Lcom/tdo/showbox/http/BaseResponse;->code:I

    goto :goto_136

    .line 328
    :cond_134
    iput p0, v2, Lcom/tdo/showbox/http/BaseResponse;->code:I

    .line 330
    :goto_136
    iput-object v1, v2, Lcom/tdo/showbox/http/BaseResponse;->data:Ljava/lang/Object;

    .line 331
    iput-object v1, v2, Lcom/tdo/showbox/http/BaseResponse;->list:Ljava/util/List;
    :try_end_13a
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_13a} :catch_13b

    :goto_13a
    return-object v2

    :catch_13b
    move-exception p0

    .line 335
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_13f
    return-object v1
.end method

.method public static toURLEncoded(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "UTF-8"

    const-string v1, ""

    if-eqz p0, :cond_1b

    .line 343
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_1b

    .line 349
    :cond_d
    :try_start_d
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 350
    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1a} :catch_1b

    return-object p0

    :catch_1b
    :cond_1b
    :goto_1b
    return-object v1
.end method
