create table all_user_mst (
    user_id varchar not null,
    name varchar not null,
    real_name varchar not null,
    tz varchar,
    color varchar,
    is_bot boolean,
    deleted boolean,
    team_id varchar,
    updated timestamp,
    is_admin boolean,
    is_owner boolean,
    tz_label varchar,
    tz_offset int,
    is_app_user boolean,
    is_restricted boolean,
    is_primary_owner boolean,
    is_email_confirmed boolean,
    is_ultra_restricted boolean,
    who_can_share_contact_card varchar,
    misc jsonb,
    primary key (user_id)
);

create table all_profile_mst (
    user_id varchar,
    image_24 varchar,
    image_32 varchar,
    image_48 varchar,
    image_72 varchar,
    image_192 varchar,
    image_512 varchar,
    image_1024 varchar,
    image_original varchar,
    avatar_hash varchar,
    display_name_normalized varchar,
    display_name varchar,
    fields jsonb,
    first_name varchar,
    huddle_state_expiration_ts timestamp,
    huddle_state varchar,
    is_custom_image boolean,
    last_name varchar,
    phone varchar,
    real_name_normalized varchar,
    real_name varchar,
    skype varchar,
    status_emoji_display_info jsonb,
    status_emoji varchar,
    status_expiration timestamp,
    status_text_canonical varchar,
    status_text varchar,
    team varchar,
    title varchar,
    misc jsonb,
    primary key (user_id)
);

create table all_channel_mst (
    channel_id varchar not null,
    name varchar not null,
    context_team_id varchar,
    created timestamp,
    creator varchar,
    is_archived boolean,
    is_channel boolean,
    is_ext_shared boolean,
    is_frozen boolean,
    is_general boolean,
    is_group boolean,
    is_im boolean,
    is_member boolean,
    is_mpim boolean,
    is_org_shared boolean,
    is_pending_ext_shared boolean,
    is_private boolean,
    is_shared boolean,
    name_normalized varchar,
    num_members integer,
    parent_conversation jsonb,
    pending_connected_team_ids jsonb,
    pending_shared jsonb,
    previous_names jsonb,
    properties jsonb,
    purpose jsonb,
    shared_team_ids jsonb,
    topic jsonb,
    unlinked integer,
    updated timestamp,
    misc jsonb,
    primary key (channel_id)
);

create table all_message (
    channel_id varchar not null,
    ts varchar not null,
    user_id varchar not null,
    text varchar not null,
    attachments jsonb,
    blocks jsonb,
    edited jsonb,
    file jsonb,
    files jsonb,
    hidden boolean,
    icons jsonb,
    is_locked boolean,
    pinned_info jsonb,
    reactions jsonb,
    reply_count integer,
    reply_users jsonb,
    reply_users_count integer,
    root jsonb,
    saved jsonb,
    subscribed boolean,
    subtype varchar,
    thread_ts varchar,
    upload boolean,
    upload_reply_to varchar,
    misc jsonb,
    primary key (channel_id, ts)
);

create index on all_message (channel_id, ts desc);